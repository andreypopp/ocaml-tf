(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_gallery_application = {
  description : string prop option; [@option]
  end_of_life_date : string prop option; [@option]
  eula : string prop option; [@option]
  gallery_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  privacy_statement_uri : string prop option; [@option]
  release_note_uri : string prop option; [@option]
  supported_os_type : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_gallery_application) -> ()

let yojson_of_azurerm_gallery_application =
  (function
   | {
       description = v_description;
       end_of_life_date = v_end_of_life_date;
       eula = v_eula;
       gallery_id = v_gallery_id;
       id = v_id;
       location = v_location;
       name = v_name;
       privacy_statement_uri = v_privacy_statement_uri;
       release_note_uri = v_release_note_uri;
       supported_os_type = v_supported_os_type;
       tags = v_tags;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_supported_os_type
         in
         ("supported_os_type", arg) :: bnds
       in
       let bnds =
         match v_release_note_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "release_note_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privacy_statement_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "privacy_statement_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gallery_id in
         ("gallery_id", arg) :: bnds
       in
       let bnds =
         match v_eula with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eula", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_of_life_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_of_life_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_gallery_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_gallery_application

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_gallery_application ?description ?end_of_life_date ?eula
    ?id ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type () :
    azurerm_gallery_application =
  {
    description;
    end_of_life_date;
    eula;
    gallery_id;
    id;
    location;
    name;
    privacy_statement_uri;
    release_note_uri;
    supported_os_type;
    tags;
    timeouts;
  }

type t = {
  description : string prop;
  end_of_life_date : string prop;
  eula : string prop;
  gallery_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  privacy_statement_uri : string prop;
  release_note_uri : string prop;
  supported_os_type : string prop;
  tags : (string * string) list prop;
}

let make ?description ?end_of_life_date ?eula ?id
    ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type __id =
  let __type = "azurerm_gallery_application" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       end_of_life_date =
         Prop.computed __type __id "end_of_life_date";
       eula = Prop.computed __type __id "eula";
       gallery_id = Prop.computed __type __id "gallery_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       privacy_statement_uri =
         Prop.computed __type __id "privacy_statement_uri";
       release_note_uri =
         Prop.computed __type __id "release_note_uri";
       supported_os_type =
         Prop.computed __type __id "supported_os_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_gallery_application
        (azurerm_gallery_application ?description ?end_of_life_date
           ?eula ?id ?privacy_statement_uri ?release_note_uri ?tags
           ?timeouts ~gallery_id ~location ~name ~supported_os_type
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?end_of_life_date ?eula ?id
    ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
    ~gallery_id ~location ~name ~supported_os_type __id =
  let (r : _ Tf_core.resource) =
    make ?description ?end_of_life_date ?eula ?id
      ?privacy_statement_uri ?release_note_uri ?tags ?timeouts
      ~gallery_id ~location ~name ~supported_os_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
