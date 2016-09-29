using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using ChinookSystem.DAL;  //context class
using ChinookSystem.Data.POCOs;   //POCOs classes
using ChinookSystem.Data.Entities;  //entity class
using System.ComponentModel;   //ODS
#endregion

namespace ChinookSystem.BLL
{
    [DataObject]
    public class ArtistController
    {
        //dump the entire artist table
        //this will use EntityFramework access
        //Entity classes will be used to define the data

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Artist> Artist_ListAll()  //List<T> where T is class
        {
            //set up the transaction area
            using (var context = new ChinookContext())
            {
                return context.Artists.ToList();
            }

        }
        //return a list of Artist and all their albums
        //this will use linq to Entity data access
        //POCO classes will be used to define the data
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<ArtistAlbums> ArtistAlbums_Get()
        {
            using (var context = new ChinookContext())
            {
                   var results = from x in context.Albums
                                 where x.ReleaseYear == 2008
                                 orderby x.Artist.Name, x.Title
                                 select ArtistAlbums
                                        {
                                        Name = x.Artist.Name,
                                        Title = x.Title};  //Name/Title are class property names
            }
        }
       
    }
}
