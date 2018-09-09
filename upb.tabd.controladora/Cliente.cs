using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA = upb.tabd.broker;
using EN = upb.tabd.entidades;

namespace upb.tabd.controladora
{
    public class Cliente
    {
        private DA.BDMascotasEntities db = new DA.BDMascotasEntities();

        /// <summary>
        /// Creacion de un cliente en la bd
        /// </summary>
        /// <param>Un objeto cliente</param>
        /// <returns>Retorna verdadero o falso dependiendo de si se crea o no un cliente en la bd</returns>
        public bool crearCliente(EN.Cliente cliente) {

            bool resultado = false;

            try
            {

                AutoMapper.Mapper.Map<EN.Cliente, DA.Cliente>(cliente);
                DA.Cliente objCliente = AutoMapper.Mapper.Map<DA.Cliente>(cliente);
                db.Clientes.Add(objCliente);
                db.SaveChanges();
            }
            catch(Exception ex) {
                throw ex;
            }

            return resultado;
        }

        /// <summary>
        /// Eliminacion de un cliente por su Primary key
        /// </summary>
        /// <param>El id del cliente</param>
        /// <returns>Falso si no se pudo eliminar o verdadero si se elimino correctamente</returns>
        public bool eliminarCliente(double idCliente)
        {
              bool resultado = false;

            try
            {

                DA.Cliente objCliente = db.Clientes.Where(x => x.IdentCliente==idCliente).FirstOrDefault();
                db.Clientes.Remove(objCliente);
                db.SaveChanges();
            }
            catch(Exception ex) {
                throw ex;
            }

            return resultado;


        }
    }

    
}
