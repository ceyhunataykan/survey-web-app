using System.Data.Entity;

namespace Survey.Models
{
    public class AnketInitializer : CreateDatabaseIfNotExists<AnketEntities1>
    {
        protected override void Seed(AnketEntities1 context)
            {
            context.Rol.Add(new Rol
            {
                Rol_Adi = "Admin"
            });
            context.Rol.Add(new Rol
            {
                Rol_Adi = "User"
            });

            context.SaveChanges();
            base.Seed(context);
            }
    }
}