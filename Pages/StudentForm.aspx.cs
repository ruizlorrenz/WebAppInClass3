using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppInClass3.Pages
{
    public partial class StudentForm : System.Web.UI.Page
    {
        private static List<Student> Students = new List<Student>();
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageLabel.Text = "";
        }
        
        protected void Add_Click(object sender, EventArgs e)
        {
            //MessageLabel.Text = "SIN = " + SIN.Text + " Name = " + Name.Text;
            if (Page.IsValid)
            {
                bool found = false;
                foreach (var item in Students)
                {
                    if (item.StudentID == int.Parse(StudentID.Text)){
                        found = true;
                    }
                }
                if (found)
                {
                    MessageLabel.Text = "Record already exists.";
                }
                else
                {
                    Student newitem = new Student(int.Parse(StudentID.Text), Name.Text, double.Parse(Credits.Text), Phone.Text);
                    Students.Add(newitem);
                    PeopleGridView.DataSource = Students;
                    PeopleGridView.DataBind();
                }
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            StudentID.Text = "";
            Name.Text = "";
            Credits.Text = "";
            Phone.Text = "";
        }
    }
}