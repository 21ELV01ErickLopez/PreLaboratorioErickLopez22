namespace PreLaboratorioErickLopez22
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        string usuario, contraseņa;
        private void button1_Click(object sender, EventArgs e)
        {
            usuario = textBox1.Text;
            contraseņa = textBox2.Text;

            Form2 v1 = new Form2();
            if (textBox1.Text == usuario & textBox2.Text == contraseņa)
            {
                this.Hide();
                v1.Show();

            }
        }
    }
}
