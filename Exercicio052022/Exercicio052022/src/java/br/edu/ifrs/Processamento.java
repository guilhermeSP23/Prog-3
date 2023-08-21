/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifrs;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SAMSUNG
 */
@WebServlet(name = "Processamento", urlPatterns = {"/Processamento"})
public class Processamento extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ;
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String modelo = request.getParameter("modelo");
            String tamanho = request.getParameter("tamanho");
            String sexo = request.getParameter("sexo");
            float preco_unitario;
            float valor_total;
            int quantidade = Integer.parseInt(request.getParameter("quantidade"));

            switch (modelo) {
                case "C": {
                    preco_unitario = (float)20;
                    break;
                }
                case "PC": {
                    if (tamanho.equals("G")) {
                        preco_unitario = (float)28.5;
                    } else {
                        preco_unitario = (float)25;
                    }
                    break;
                }
                case "PL": {
                    if (tamanho.equals("P")) {
                        preco_unitario = (float)32.5;
                    } else {
                        preco_unitario = (float)39.9;
                    }
                    break;
                }
                case "S": {
                    if (tamanho.equals("P")) {
                        preco_unitario = (float)55;
                    } else {
                        if (tamanho.equals("M")) {
                            preco_unitario = (float)58.9;
                        } else {
                            preco_unitario = (float)62.9;
                        }
                    }
                    break;
                }
                default: {
                    throw new Exception("Você precisa selecionar um modelo de camisa!!!!");
                }
            }

            if (sexo.equals("F")) preco_unitario += (float)2.25;

            valor_total = preco_unitario * quantidade;

            request.setAttribute("valorTotal", valor_total);

            RequestDispatcher despachar = request.getRequestDispatcher("resultado.jsp");
            despachar.forward(request, response);
        } catch (Exception e) {
            request.setAttribute("msg", e.getMessage());
            
            RequestDispatcher despachar = request.getRequestDispatcher("erros.jsp");
            despachar.forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
