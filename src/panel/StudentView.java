/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package panel;

import component.UserSession;
import config.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import javax.swing.DefaultComboBoxModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author rezaa x adam
 */
public class StudentView extends javax.swing.JPanel {
    Statement st;
    PreparedStatement stmt;
    Connection con = ConnectDB.getConnection();
    ResultSet rs;
    DefaultComboBoxModel modelc;
    DefaultTableModel model;
    SimpleDateFormat df;
    
    /**
     * Creates new form StudentView
     */
    public StudentView() {
        initComponents();
        init();
        
    }
    
    private void init() {
        df = new SimpleDateFormat("dd-MM-yyyy");
        String[] judul = {"Tanggal","Id Transaksi","Bulan Bayar","Total","Petugas"};
        model = new DefaultTableModel(judul,0) {
            @Override
            public boolean isCellEditable(int row, int column) {
               //all cells false
               return false;
            }
        };
        jTable1.setModel(model);
        String sql = "SELECT student.nis, student.nama, class.nama_kelas, category.jenis_kategori, student.angkatan,\n" +
                "       payment.tanggal_bayar, payment.bulan, payment.tahun, payment.jumlah_bayar, payment.id_transaksi,\n" +
                "       user.nama AS nama_petugas\n" +
                "FROM student\n" +
                "JOIN class ON student.id_kelas = class.id_kelas\n" +
                "JOIN category ON student.id_kategori = category.id_kategori\n" +
                "LEFT JOIN payment ON student.nis = payment.nis\n" +
                "LEFT JOIN user ON payment.id_petugas = user.id_petugas\n" +
                "WHERE payment.nis = '"+ UserSession.getId() +"';";
        try {
            rs = con.createStatement().executeQuery(sql);
            while(rs.next()) {
                TxtNIS.setText(rs.getString("nis"));
                TxtNama.setText(rs.getString("nama"));
                TxtKelas.setText(rs.getString("nama_kelas"));
                TxtAngkatan.setText(rs.getString("angkatan"));
                TxtKategori.setText(rs.getString("jenis_kategori"));

                String date = df.format(rs.getDate("tanggal_bayar"));
                String payment = rs.getString("bulan") + " " + rs.getString("tahun");
                String total = rs.getString("jumlah_bayar");
                String idPayment = rs.getString("id_transaksi");
                String nameOfficer = rs.getString("nama_petugas");

                String[] data = {date, idPayment, payment, total, nameOfficer};
                model.addRow(data);
            }
        }catch(Exception e) {
           System.out.println(e);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jPanel3 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        Lb1 = new javax.swing.JLabel();
        Lb2 = new javax.swing.JLabel();
        Lb3 = new javax.swing.JLabel();
        Lb4 = new javax.swing.JLabel();
        Lb5 = new javax.swing.JLabel();
        TxtNIS = new javax.swing.JLabel();
        TxtNama = new javax.swing.JLabel();
        TxtKelas = new javax.swing.JLabel();
        TxtAngkatan = new javax.swing.JLabel();
        TxtKategori = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();

        setMinimumSize(new java.awt.Dimension(800, 500));
        setLayout(new java.awt.BorderLayout());

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel3.setLayout(new javax.swing.BoxLayout(jPanel3, javax.swing.BoxLayout.PAGE_AXIS));

        jPanel4.setBorder(javax.swing.BorderFactory.createEmptyBorder(10, 10, 10, 10));
        jPanel4.setMaximumSize(new java.awt.Dimension(2147483647, 100));
        jPanel4.setLayout(new java.awt.GridBagLayout());

        Lb1.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        Lb1.setText("NIS");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        jPanel4.add(Lb1, gridBagConstraints);

        Lb2.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        Lb2.setText("Nama");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        jPanel4.add(Lb2, gridBagConstraints);

        Lb3.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        Lb3.setText("Kelas");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        jPanel4.add(Lb3, gridBagConstraints);

        Lb4.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        Lb4.setText("Angkatan");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        jPanel4.add(Lb4, gridBagConstraints);

        Lb5.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        Lb5.setText("Kategori");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        jPanel4.add(Lb5, gridBagConstraints);

        TxtNIS.setFont(new java.awt.Font("Segoe UI Semibold", 0, 14)); // NOI18N
        TxtNIS.setText("jLabel1");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 0);
        jPanel4.add(TxtNIS, gridBagConstraints);

        TxtNama.setFont(new java.awt.Font("Segoe UI Semibold", 0, 14)); // NOI18N
        TxtNama.setText("jLabel1");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 0);
        jPanel4.add(TxtNama, gridBagConstraints);

        TxtKelas.setFont(new java.awt.Font("Segoe UI Semibold", 0, 14)); // NOI18N
        TxtKelas.setText("jLabel1");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 0);
        jPanel4.add(TxtKelas, gridBagConstraints);

        TxtAngkatan.setFont(new java.awt.Font("Segoe UI Semibold", 0, 14)); // NOI18N
        TxtAngkatan.setText("jLabel1");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 0);
        jPanel4.add(TxtAngkatan, gridBagConstraints);

        TxtKategori.setFont(new java.awt.Font("Segoe UI Semibold", 0, 14)); // NOI18N
        TxtKategori.setText("jLabel1");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 0, 0);
        jPanel4.add(TxtKategori, gridBagConstraints);

        jPanel3.add(jPanel4);

        jPanel5.setLayout(new java.awt.GridBagLayout());

        jLabel2.setFont(new java.awt.Font("Segoe UI Semibold", 0, 14)); // NOI18N
        jLabel2.setText("Riwayat Pembayaran");
        jLabel2.setBorder(javax.swing.BorderFactory.createEmptyBorder(10, 10, 10, 10));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.weightx = 1.0;
        jPanel5.add(jLabel2, gridBagConstraints);

        jPanel3.add(jPanel5);

        add(jPanel3, java.awt.BorderLayout.PAGE_START);
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel Lb1;
    private javax.swing.JLabel Lb2;
    private javax.swing.JLabel Lb3;
    private javax.swing.JLabel Lb4;
    private javax.swing.JLabel Lb5;
    private javax.swing.JLabel TxtAngkatan;
    private javax.swing.JLabel TxtKategori;
    private javax.swing.JLabel TxtKelas;
    private javax.swing.JLabel TxtNIS;
    private javax.swing.JLabel TxtNama;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
