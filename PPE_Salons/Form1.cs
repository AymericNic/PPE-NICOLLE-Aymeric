using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace PPE_Salons
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DBConnection dbCon = new DBConnection();
            dbCon.Server = "127.0.0.1";
            dbCon.DatabaseName = "sucrerie";
            dbCon.UserName = "root";
            dbCon.Password = "";//Pour éviter d'afficher le mot de passe en clair dans le code
            if (dbCon.IsConnect())
            {
                string query = "SELECT id, nom, prenom, email FROM client ORDER BY nom";
                var cmd = new MySqlCommand(query, dbCon.Connection);
                var reader = cmd.ExecuteReader();//Remplissage du curseur
                List<Contact> contacts = new List<Contact>();
                while (reader.Read())
                {
                    Contact contact = new Contact
                    {
                        Id = (int)reader["id"],
                        Nom = (string)reader["nom"],
                        Prenom = (string)reader["prenom"],
                        Email = (string)reader["email"],

                    };
                    contacts.Add(contact);
                }

                MaGrid.DataSource = null;
                MaGrid.DataSource = contacts;
               FormaterListe();
                reader.Close();
                dbCon.Close();
                MaGrid.Visible = true;

            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in MaGrid.SelectedRows)
            {
                Contact UnParticipant = row.DataBoundItem as Contact;
                PageParticipant MonFormParticipant = new PageParticipant(UnParticipant);
                MonFormParticipant.Show();

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Contact UnParticipant = new Contact();
            UnParticipant.Id = 0;//Pour être sur qu'il soit inséré
            PageParticipant MonFormParticipant = new PageParticipant(UnParticipant);
            MonFormParticipant.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in MaGrid.SelectedRows)
            {
                Contact UnParticipant = row.DataBoundItem as Contact;
                if (UnParticipant.Supprimer())
                    MessageBox.Show("Participant Supprimé !");
                // Ici on rafraîchit la liste....
                else
                    MessageBox.Show("Impossible de  Supprimer !");

            }
        }


        private void FormaterListe()
        {
            MaGrid.Columns["id"].Visible = false;
            MaGrid.Columns["nom"].HeaderText = "Nom du participant";
            MaGrid.Columns["nom"].Width = 150;
            MaGrid.MultiSelect = false;
            MaGrid.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            MaGrid.ReadOnly = true;
        }
        private void button5_Click(object sender, EventArgs e)
        {
            DBConnection dbCon = new DBConnection();
            dbCon.Server = "127.0.0.1";
            dbCon.DatabaseName = "sucrerie";
            dbCon.UserName = "root";
            dbCon.Password = "";//Pour éviter d'afficher le mot de passe en clair dans le code
            if (dbCon.IsConnect())
            {
                string query = "SELECT id, nom, prenom, email FROM client where nom =?nom ORDER BY nom";
                query = Tools.PrepareLigne(query, "?nom", Tools.PrepareChamp(tbNom.Text, "Chaine"));

                var cmd = new MySqlCommand(query, dbCon.Connection);
                var reader = cmd.ExecuteReader();//Remplissage du curseur
                List<Contact> contacts = new List<Contact>();
                while (reader.Read())
                {
                    Contact contact = new Contact
                    {
                        Id = (int)reader["id"],
                        Nom = (string)reader["nom"],
                        Prenom = (string)reader["prenom"],
                        Email = (string)reader["email"],
                    };
                    contacts.Add(contact);
                }

                MaGrid.DataSource = null;
                MaGrid.DataSource = contacts;
                FormaterListe();
                reader.Close();
                dbCon.Close();
                MaGrid.Visible = true;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            MaGrid.Visible = false;
        }
    }
}