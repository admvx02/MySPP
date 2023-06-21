/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package panel;

import component.UserSession;

/**
 *
 * @author rezaa x adam 
 */
public class MasterData extends javax.swing.JPanel {

    /**
     * Creates new form MasterData
     */
    public MasterData(int panel) {
        initComponents();
        UserSession.setPanelOpened("Pusat Data");
        init();
        jTabbedPane1.setSelectedIndex(panel);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTabbedPane1 = new javax.swing.JTabbedPane();

        setMinimumSize(new java.awt.Dimension(800, 500));
        setName("Pusat Data"); // NOI18N
        setLayout(new java.awt.BorderLayout());

        jTabbedPane1.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        add(jTabbedPane1, java.awt.BorderLayout.CENTER);
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTabbedPane jTabbedPane1;
    // End of variables declaration//GEN-END:variables
    
    private void init() {
        jTabbedPane1.add("Siswa", new MasterDataStudent());
        jTabbedPane1.add("Kelas", new MasterDataClass());
        jTabbedPane1.add("SPP", new MasterDataSchoolFee());
        jTabbedPane1.add("Kategori", new MasterDataCategory());
        jTabbedPane1.add("Petugas", new MasterDataOfficer());
    }
}
