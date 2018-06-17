package br.com.showtv.premiomil.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.showtv.premiomil.model.Usuario;
import br.com.showtv.premiomil.model.UsuarioDAO;
import br.com.showtv.premiomil.util.Util;

/**
 * @Author: rique
 */
@Controller
public class UsuarioController {

	@RequestMapping("/usuario/add")
	public String addUser() {

		return "usuario/adduser";
	}

	@RequestMapping("/usuario/save")
	public String save(Usuario usuario, @RequestParam("file") MultipartFile imagem) {

		if (Util.fazerUploadImagem(imagem)) {
			usuario.setImagem(Util.obterMomentoAtual() + " - " + imagem.getOriginalFilename());
		}

		UsuarioDAO dao = new UsuarioDAO();
		dao.salvar(usuario);

		return "usuario/usuarioCadastradoSucesso";
	}

	@RequestMapping("/usuario/lista")
	public String listarUsuario(Model model) {
		UsuarioDAO dao = new UsuarioDAO();
		List<Usuario> listaUsuario = dao.listar(null);
		model.addAttribute("listaUsuario", listaUsuario);

		return "usuario/listarUsuario";
	}

	@RequestMapping("/usuario/filter")
	public String filtrarUsuario(Usuario produto, Model model) {

		UsuarioDAO dao = new UsuarioDAO();
		List<Usuario> listaUsuario = dao.listar(produto);
		model.addAttribute("listaUsuario", listaUsuario);

		return "usuario/listarUsuario";
	}

	@RequestMapping("/usuario/edit")
	public String edit(@RequestParam("id") Integer id, Model model) {

		UsuarioDAO dao = new UsuarioDAO();
		Usuario usuario = dao.buscarPorId(id);
		model.addAttribute("usuario", usuario);

		return "usuario/alterarUsuario";
	}

	@RequestMapping("/usuario/update")
	public String update(Usuario usuario, Model model) {
		
		UsuarioDAO dao = new UsuarioDAO();
		dao.alterar(usuario);
		model.addAttribute("mensagem", "Usuário alterado com Sucesso !");
		
		return "forward:lista";
	}

	@RequestMapping("/usuario/delete")
	public String delete(@RequestParam("id") Integer id, Model model) {
		UsuarioDAO dao = new UsuarioDAO();
		dao.remover(id);
		model.addAttribute("mensagem", "Usuário Removido com Sucesso");
		return "forward:lista";
	}

}
