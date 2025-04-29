namespace PreLaboratorioErickLopez22
{
    partial class Form3
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label1 = new Label();
            label3 = new Label();
            label4 = new Label();
            pictureBox1 = new PictureBox();
            label2 = new Label();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Century Schoolbook", 18F, FontStyle.Bold);
            label1.Location = new Point(379, 120);
            label1.Name = "label1";
            label1.Size = new Size(120, 30);
            label1.TabIndex = 0;
            label1.Text = "Creditos";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Century Schoolbook", 18F, FontStyle.Bold);
            label3.Location = new Point(259, 162);
            label3.Name = "label3";
            label3.Size = new Size(394, 30);
            label3.TabIndex = 2;
            label3.Text = "Erick Mauricio Lopez Vasquez";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Century Schoolbook", 18F, FontStyle.Bold);
            label4.Location = new Point(304, 209);
            label4.Name = "label4";
            label4.Size = new Size(287, 30);
            label4.TabIndex = 3;
            label4.Text = "Quinto Bachillerato D";
            // 
            // pictureBox1
            // 
            pictureBox1.Image = Properties.Resources.ErickLopez;
            pictureBox1.Location = new Point(65, 79);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(179, 238);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 4;
            pictureBox1.TabStop = false;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Century Schoolbook", 18F, FontStyle.Bold);
            label2.Location = new Point(391, 258);
            label2.Name = "label2";
            label2.Size = new Size(119, 30);
            label2.TabIndex = 5;
            label2.Text = "Clave 22";
            // 
            // Form3
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Lime;
            ClientSize = new Size(800, 450);
            Controls.Add(label2);
            Controls.Add(pictureBox1);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label1);
            Name = "Form3";
            Text = "Form3";
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label3;
        private Label label4;
        private PictureBox pictureBox1;
        private Label label2;
    }
}