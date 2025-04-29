using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PreLaboratorioErickLopez22
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.Add(textBox1.Text, textBox2.Text, textBox3.Text, textBox4.Text, textBox5.Text, textBox6.Text, textBox7.Text, textBox8.Text, textBox9.Text, textBox10.Text, textBox11.Text);
        }

        private void button1_Click_1(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            DataGridViewRow Editar = dataGridView1.SelectedRows[0];
            Editar.Cells[0].Value = textBox1.Text;
            Editar.Cells[1].Value = textBox2.Text;
            Editar.Cells[2].Value = textBox3.Text;
            Editar.Cells[3].Value = textBox4.Text;
            Editar.Cells[4].Value = textBox5.Text;
            Editar.Cells[5].Value = textBox6.Text;
            Editar.Cells[6].Value = textBox7.Text;
            Editar.Cells[7].Value = textBox8.Text;
            Editar.Cells[8].Value = textBox9.Text;
            Editar.Cells[9].Value = textBox10.Text;
            Editar.Cells[10].Value = textBox11.Text;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                DialogResult confirm = MessageBox.Show("Se borrara esta Fila", "Borrar", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

                if (confirm == DialogResult.Yes)
                {
                    dataGridView1.Rows.RemoveAt(dataGridView1.SelectedRows[0].Index);
                }
            }
        }
    }
}
