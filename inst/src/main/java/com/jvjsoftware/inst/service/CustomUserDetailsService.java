package com.jvjsoftware.inst.service;

import java.util.ArrayList;
import java.util.Collection;
//import java.util.Collection;
import java.util.List;





//import com.mundomoda.domain.Perfil;
//import com.mundomoda.domain.Rol;
//import pe.com.mundomoda.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jvjsoftware.inst.dao.PerfilDAO;
import com.jvjsoftware.inst.dao.UsuarioDAO;
import com.jvjsoftware.inst.domain.Perfil;
import com.jvjsoftware.inst.domain.Rol;
import com.jvjsoftware.inst.domain.Usuario;

/**
 * A custom {@link UserDetailsService} where user information is retrieved from
 * a JPA repository
 */
@Service
@Transactional(readOnly = true)
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UsuarioDAO usuarioDAO;
	
	@Autowired
	private PerfilDAO perfilDAO;

	/**
	 * Returns a populated {@link UserDetails} object. The username is first
	 * retrieved from the database and then mapped to a {@link UserDetails}
	 * object.
	 */
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		try {

			Usuario usuario = usuarioDAO.buscaUsuario(username);
			
			Boolean estado = false;
			
			for(Perfil perfil :usuario.getPerfil()){
				if( usuario.getEstado()==1 & perfil.getEstado().equals("Activo")){
					estado = true;
				}
			}

			
			// pe.com.mundomoda.domain.Usuario domainUser =
			// userRepository.findByUsername(username);

			List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();

			// if (domainUser != null) {
			for (Perfil perfil : usuario.getPerfil()) {
				for (Rol rol : perfil.getRol()) {
					roles.add(new SimpleGrantedAuthority(rol.getNombreRol()));
				}
			}
			boolean accountNonExpired = true;
			boolean credentialsNonExpired = true;
			boolean accountNonLocked = true;

			return new User(
					// domainUser.getUsername(),
					// domainUser.getPassword(),
					usuario.getUsername(), usuario.getPassword(), estado,
					accountNonExpired, credentialsNonExpired, accountNonLocked,
					roles);

		} catch (Exception e) {

			e.printStackTrace();

			throw new RuntimeException(e);
		}
	}

	/**
	 * Retrieves a collection of {@link GrantedAuthority} based on a numerical
	 * role
	 * 
	 * @param role
	 *            the numerical role
	 * @return a collection of {@link GrantedAuthority
	 */

	public Collection<? extends GrantedAuthority> getAuthorities(
			List<String> roles) {
		List<GrantedAuthority> authList = getGrantedAuthorities(roles);
		return authList;
	}

	/**
	 * Converts a numerical role to an equivalent list of roles
	 * 
	 * @param role
	 *            the numerical role
	 * @return list of roles as as a list of {@link String}
	 */
	public List<String> getRoles(List<String> roles) {
		// List<String> roles = new ArrayList<String>();
		//
		// if (rol.equals("1")) {
		// roles.add("ROLE_USER");
		// roles.add("ROLE_ADMIN");
		//
		// } else if (rol.equals("2")) {
		// roles.add("ROLE_USER");
		// }
		//
		return roles;
	}

	/**
	 * Wraps {@link String} roles to {@link SimpleGrantedAuthority} objects
	 * 
	 * @param roles
	 *            {@link String} of roles
	 * @return list of granted authorities
	 */
	public static List<GrantedAuthority> getGrantedAuthorities(
			List<String> roles) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (String role : roles) {
			authorities.add(new SimpleGrantedAuthority(role));
		}
		return authorities;
	}
}
