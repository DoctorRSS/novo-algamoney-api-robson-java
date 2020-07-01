package com.example.algamoney.api.config.token;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;

import com.example.algamoney.api.model.Usuario;
import com.example.algamoney.api.repository.UsuarioRepository;
import com.example.algamoney.api.security.UsuarioSistema;

public class CustomTokenEnhancer implements TokenEnhancer {
	
	@Autowired
	UsuarioRepository suarioRepository;

	@Override
	public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) {
		User usuarioSistema = (User) authentication.getPrincipal();
		Usuario usuario = suarioRepository.findByEmail(usuarioSistema.getUsername()).get();
		UsuarioSistema usuarioSistemaOriginal = new UsuarioSistema(usuario,usuarioSistema.getAuthorities());
		
		Map<String, Object> addInfo = new HashMap<>();
		addInfo.put("nome", usuarioSistemaOriginal.getUsuario().getNome());
		
		((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(addInfo);
		return accessToken;
	}

}
