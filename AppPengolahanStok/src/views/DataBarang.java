/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package views;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author HP
 */
public class DataBarang extends javax.swing.JFrame {

    koneksi koneksi = new koneksi();

    private DefaultTableModel model;

    private void autonumber() {
        try {
            Connection c = koneksi.getKoneksi();
            Statement s = c.createStatement();
            String sql = "SELECT * FROM barang ORDER BY ID_Barang DESC";
            ResultSet r = s.executeQuery(sql);
            if (r.next()) {
                String NoFaktur = r.getString("ID_Barang").substring(2);
                String BR = "" + (Integer.parseInt(NoFaktur) + 1);
                String Nol = "";

                if (BR.length() == 1) {
                    Nol = "00";
                } else if (BR.length() == 2) {
                    Nol = "0";
                } else if (BR.length() == 3) {
                    Nol = "";
                }

                txIDBarang.setText("BR" + Nol + BR);
            } else {
                txIDBarang.setText("BR001");
            }
            r.close();
            s.close();
        } catch (Exception e) {
            System.out.println("autonumber error");
        }
    }

    public void clear() {
        txNamaBarang.setText("");
        txHargaBeli.setText("");
        txHargaJual.setText("");
        txStok.setText("");
    }

    public void loadData() {
        model.getDataVector().removeAllElements();

        model.fireTableDataChanged();

        try {
            Connection c = koneksi.getKoneksi();
            Statement s = c.createStatement();

            String sql = "SELECT * FROM barang";
            ResultSet r = s.executeQuery(sql);

            while (r.next()) {
                Object[] o = new Object[6];
                o[0] = r.getString("ID_Barang");
                o[1] = r.getString("Nama_Barang");
                o[2] = r.getString("Jenis");
                o[3] = r.getString("HargaBeli");
                o[4] = r.getString("HargaJual");
//                o[5] = r.getString("Stok");

                model.addRow(o);
            }
            r.close();
            s.close();
        } catch (Exception e) {
            System.out.println("terjadi kesalahan");
        }
    }

    public void cariData() {
        DefaultTableModel tabel = new DefaultTableModel();

        tabel.addColumn("ID Barang");
        tabel.addColumn("Nama Barang");
        tabel.addColumn("Jenis");
        tabel.addColumn("HargaBeli");
        tabel.addColumn("HargaJual");
//        tabel.addColumn("Stok");

        try {
            Connection c = koneksi.getKoneksi();
            String sql = "Select * from barang where ID_Barang like '%" + jTextField1.getText() + "%'"
                    + "or Nama_Barang like '%" + jTextField1.getText() + "%'";
            Statement stat = c.createStatement();
            ResultSet rs = stat.executeQuery(sql);
            while (rs.next()) {
                tabel.addRow(new Object[]{
                    rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
//                    rs.getString(6),
                });
            }
            jTable1.setModel(tabel);
            loadData();
        } catch (Exception e) {
            System.out.println("Cari Data Error");
        } finally {
        }
    }

    /**
     * Creates new form DataBarang
     */
    public DataBarang() {
        initComponents();
        this.setLocationRelativeTo(null);

        model = new DefaultTableModel();

        jTable1.setModel(model);

        model.addColumn("ID_Barang");
        model.addColumn("Nama_Barang");
        model.addColumn("Jenis");
        model.addColumn("HargaBeli");
        model.addColumn("HargaJual");
//        model.addColumn("Stok");

        loadData();
        autonumber();
        btnEdit.setEnabled(false);
        btnHapus.setEnabled(false);
        btnBatal.setEnabled(false);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        txIDBarang = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        txNamaBarang = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        txHargaBeli = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        txHargaJual = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        txStok = new javax.swing.JTextField();
        cbJenis = new javax.swing.JComboBox<>();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        btnSimpan = new javax.swing.JButton();
        btnEdit = new javax.swing.JButton();
        btnHapus = new javax.swing.JButton();
        btnBatal = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 204, 204));

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel1.setText("DATA BARANG");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel3.setText("ID Barang");

        txIDBarang.setEnabled(false);

        jLabel4.setText("Nama Barang");

        jLabel5.setText("Jenis Barang");

        jLabel6.setText("Harga Beli");

        txHargaBeli.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txHargaBeliKeyTyped(evt);
            }
        });

        jLabel7.setText("Harga Jual");

        txHargaJual.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txHargaJualKeyTyped(evt);
            }
        });

        jLabel8.setText("Stok");

        txStok.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txStokKeyTyped(evt);
            }
        });

        cbJenis.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Import", "Lokal", "Personal Health" }));

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
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel4)
                            .addComponent(jLabel3)
                            .addComponent(jLabel5))
                        .addGap(44, 44, 44)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txNamaBarang)
                            .addComponent(cbJenis, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txIDBarang, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(131, 131, 131)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel6)
                            .addComponent(jLabel7)
                            .addComponent(jLabel8))
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(103, 103, 103)
                                .addComponent(txStok, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txHargaBeli, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txHargaJual, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                    .addComponent(jScrollPane1))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(txIDBarang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txHargaBeli, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(txNamaBarang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(11, 11, 11)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel5)
                                    .addComponent(cbJenis, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(27, 27, 27))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(txHargaJual, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txStok, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(32, 32, 32))))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel6)
                        .addGap(24, 24, 24)
                        .addComponent(jLabel7)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel8)
                        .addGap(26, 26, 26)))
                .addComponent(jScrollPane1)
                .addContainerGap())
        );

        jLabel2.setText("Cari Data");

        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jTextField1KeyTyped(evt);
            }
        });

        btnSimpan.setText("Simpan");
        btnSimpan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSimpanActionPerformed(evt);
            }
        });

        btnEdit.setText("Edit");
        btnEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditActionPerformed(evt);
            }
        });

        btnHapus.setText("Hapus");
        btnHapus.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnHapusActionPerformed(evt);
            }
        });

        btnBatal.setText("Batal");
        btnBatal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBatalActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(560, 560, 560)
                        .addComponent(jLabel2)
                        .addGap(16, 16, 16)
                        .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 210, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(6, 6, 6)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(297, 297, 297)
                        .addComponent(btnSimpan)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnEdit, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(10, 10, 10)
                        .addComponent(btnHapus)
                        .addGap(8, 8, 8)
                        .addComponent(btnBatal)))
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(17, 17, 17)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btnEdit)
                        .addComponent(btnSimpan))
                    .addComponent(btnHapus)
                    .addComponent(btnBatal))
                .addGap(27, 27, 27))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
        cariData();
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void btnEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditActionPerformed
        // TODO add your handling code here:
        int i = jTable1.getSelectedRow();
        if (i == -1) {
            return;
        }
        String id = (String) model.getValueAt(i, 0);
        String nama = txNamaBarang.getText();
        String jenis = (String) cbJenis.getSelectedItem();
        String hargaBeli = txHargaBeli.getText();
        String hargaJual = txHargaJual.getText();
        String stok = txStok.getText();

        try {
            Connection c = koneksi.getKoneksi();
            String sql = "UPDATE barang SET Nama_Barang = ?, Jenis = ?, HargaBeli = ?, HargaJual = ?, Stok = ? WHERE ID_Barang = ?";
            PreparedStatement p = c.prepareStatement(sql);
            p.setString(1, nama);
            p.setString(2, jenis);
            p.setString(3, hargaBeli);
            p.setString(4, hargaJual);
            p.setString(5, stok);
            p.setString(6, id);

            p.executeUpdate();
            p.close();
            JOptionPane.showMessageDialog(null, "Data Terubah");
            btnSimpan.setEnabled(true);
            btnEdit.setEnabled(false);
            btnHapus.setEnabled(false);
            btnBatal.setEnabled(false);
            clear();
        } catch (Exception e) {
            System.out.println("update error");
        } finally {
            loadData();
            autonumber();
        }
    }//GEN-LAST:event_btnEditActionPerformed

    private void btnHapusActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnHapusActionPerformed
        // TODO add your handling code here:
        int i = jTable1.getSelectedRow();
        if (i == -1) {
            return;
        }

        String id = (String) model.getValueAt(i, 0);

        int pernyataan = JOptionPane.showConfirmDialog(null, "Yakin Data Akan Dihapus", "Konfirmasi", JOptionPane.OK_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE);
        if (pernyataan == JOptionPane.OK_OPTION) {
            try {
                Connection c = koneksi.getKoneksi();
                String sql = "DELETE FROM barang WHERE ID_Barang = ?";
                PreparedStatement p = c.prepareStatement(sql);
                p.setString(1, id);
                p.executeUpdate();
                p.close();
                JOptionPane.showMessageDialog(null, "Data Terhapus");
            } catch (Exception e) {
                System.out.println("Terjadi Kesalahan");
            } finally {
                btnSimpan.setEnabled(true);
                btnEdit.setEnabled(false);
                btnHapus.setEnabled(false);
                btnBatal.setEnabled(false);
                loadData();
                autonumber();
                clear();
            }
        }
        if (pernyataan == JOptionPane.CANCEL_OPTION) {

        }
    }//GEN-LAST:event_btnHapusActionPerformed

    private void btnSimpanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSimpanActionPerformed
        // TODO add your handling code here:
        String id = txIDBarang.getText();
        String nama = txNamaBarang.getText();
        String jenis = (String) cbJenis.getSelectedItem();
        String hargaBeli = txHargaBeli.getText();
        String hargaJual = txHargaJual.getText();
        String stok = txStok.getText();

        try {
            Connection c = koneksi.getKoneksi();
            String sql = "INSERT INTO BARANG VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement p = c.prepareStatement(sql);
            p.setString(1, id);
            p.setString(2, nama);
            p.setString(3, jenis);
            p.setString(4, hargaBeli);
            p.setString(5, hargaJual);
            p.setString(6, stok);
            p.executeUpdate();
            p.close();
            JOptionPane.showMessageDialog(null, "Data Tersimpan");
            loadData();
        } catch (Exception e) {
            System.out.println("Terjadi Kesalahan");
        } finally {
            autonumber();
            clear();
        }
    }//GEN-LAST:event_btnSimpanActionPerformed

    private void btnBatalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBatalActionPerformed
        // TODO add your handling code here:
        clear();
        loadData();
        btnSimpan.setEnabled(true);
        btnEdit.setEnabled(false);
        btnHapus.setEnabled(false);
        btnBatal.setEnabled(false);
        autonumber();
    }//GEN-LAST:event_btnBatalActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
        btnSimpan.setEnabled(false);
        btnEdit.setEnabled(true);
        btnHapus.setEnabled(true);
        btnBatal.setEnabled(true);

        int i = jTable1.getSelectedRow();
        if (i == -1) {
            return;
        }

        String id = (String) model.getValueAt(i, 0);
        String nama = (String) model.getValueAt(i, 1);
        String jenis = (String) model.getValueAt(i, 2);
        String hargaBeli = (String) model.getValueAt(i, 3);
        String hargaJual = (String) model.getValueAt(i, 4);
        String stok = (String) model.getValueAt(i, 5);

        txIDBarang.setText(id);
        txNamaBarang.setText(nama);
        cbJenis.setSelectedItem(jenis);
        txHargaBeli.setText(hargaBeli);
        txHargaJual.setText(hargaJual);
        txStok.setText(stok);
    }//GEN-LAST:event_jTable1MouseClicked

    private void jTextField1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyTyped
        // TODO add your handling code here:
        cariData();
    }//GEN-LAST:event_jTextField1KeyTyped

    private void txStokKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txStokKeyTyped
        // TODO add your handling code here:\
        char enter = evt.getKeyChar();
        if (!(Character.isDigit(enter))) {
            evt.consume();
        }
    }//GEN-LAST:event_txStokKeyTyped

    private void txHargaJualKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txHargaJualKeyTyped
        // TODO add your handling code here:
         char enter = evt.getKeyChar();
        if(!(Character.isDigit(enter))){
            evt.consume();
        }
    }//GEN-LAST:event_txHargaJualKeyTyped

    private void txHargaBeliKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txHargaBeliKeyTyped
        // TODO add your handling code here:
         char enter = evt.getKeyChar();
        if(!(Character.isDigit(enter))){
            evt.consume();
        }
    }//GEN-LAST:event_txHargaBeliKeyTyped

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(DataBarang.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(DataBarang.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(DataBarang.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(DataBarang.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new DataBarang().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBatal;
    private javax.swing.JButton btnEdit;
    private javax.swing.JButton btnHapus;
    private javax.swing.JButton btnSimpan;
    private javax.swing.JComboBox<String> cbJenis;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField txHargaBeli;
    private javax.swing.JTextField txHargaJual;
    private javax.swing.JTextField txIDBarang;
    private javax.swing.JTextField txNamaBarang;
    private javax.swing.JTextField txStok;
    // End of variables declaration//GEN-END:variables
}
