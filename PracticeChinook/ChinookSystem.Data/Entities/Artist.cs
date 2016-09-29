using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
#endregion


namespace ChinookSystem.Data.Entities


{   //[Table("sqltablename")]
    //if you want to put in schem - use dbo

        [Table("Artists")]
    public class Artist
    {
        //PKey annotations is optional
        //default assumes identity sql table
        //default assumes property names ends with ID or Id and sql PKey ends the same
        //otherwise [Key] is needed
        //non-identity PKeys, compounds PKeys,PKeys not ending in ID or Id

        //Class properties map to sql table attributes
        //properties should be named the same as table attributes
        //properties should be in the same order as the table attributes for ease of maintenance
        [Key]
        public int ArtistID { get; set; }
        public string Name { get; set; } 

        //navigation properties for use by Linq
        //use the DB ERD to determine the relationships

        //these properties will be of type virtual 
        //there are two types of navigation properties
            //properties that point to "children" use ICollection<T> as the datatype
            //properties that point to "parent" use ParentClassName as the datatype

        public virtual ICollection<Album> Albums { get; set; } //parent to artist
        public virtual ICollection<MediaType> MediaTypes { get; set; } //parent to artist

    }
}
