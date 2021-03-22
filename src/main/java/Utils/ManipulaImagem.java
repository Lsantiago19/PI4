/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.servlet.http.Part;

/**
 *
 * @author Gabriel
 */
public class ManipulaImagem {

    public static void getImagem(String path, int idprod, int idimg) {
        Graphics2D g2d = null;;
        String filename = idprod + "_" + idimg;
        BufferedImage image = null;
        File oldfile = new File(path);        

        System.out.println("nomeImagem " + filename);

        System.out.println(path + " aaaa " + "meudeus" + " AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        String arquivo = idprod + "_" + idimg; // cria nome pro arquivo do sistema

        /*AVISO - PASTA PODE MUDAR DEPENDENDO DE ONDE ESTÁ O SEU PROJETO NO SEU PC
                AO TESTAR COM OUTRO LOCAL DE ARQUIVO, NÃO APAGUE ESSA PATH, DEIXE COMENTADO!
         */
        path = "D:\\Downloads\\PI4\\src\\main\\java\\Imagens\\" + arquivo + ".jpg"; // pasta escolhida pras imagens

        int wid = 1440;
        int hei = 1080;
        File f = new File(path);
        
        
        image = new BufferedImage(wid, hei, BufferedImage.TYPE_INT_ARGB);

        try {
            image = ImageIO.read(oldfile); // le a imagem escolhida pelo user
            ImageIO.write(image, "jpg", f); // salva a imagem na pasta escolhida
        } catch (IOException ex) {
            Logger.getLogger(ManipulaImagem.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
