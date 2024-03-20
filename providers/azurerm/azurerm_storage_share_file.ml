(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_share_file = {
  content_disposition : string prop option; [@option]
      (** content_disposition *)
  content_encoding : string prop option; [@option]
      (** content_encoding *)
  content_md5 : string prop option; [@option]  (** content_md5 *)
  content_type : string prop option; [@option]  (** content_type *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  source : string prop option; [@option]  (** source *)
  storage_share_id : string prop;  (** storage_share_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share_file *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_share_file ?content_disposition ?content_encoding
    ?content_md5 ?content_type ?id ?metadata ?path ?source ?timeouts
    ~name ~storage_share_id () : azurerm_storage_share_file =
  {
    content_disposition;
    content_encoding;
    content_md5;
    content_type;
    id;
    metadata;
    name;
    path;
    source;
    storage_share_id;
    timeouts;
  }

type t = {
  content_disposition : string prop;
  content_encoding : string prop;
  content_length : float prop;
  content_md5 : string prop;
  content_type : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  path : string prop;
  source : string prop;
  storage_share_id : string prop;
}

let make ?content_disposition ?content_encoding ?content_md5
    ?content_type ?id ?metadata ?path ?source ?timeouts ~name
    ~storage_share_id __id =
  let __type = "azurerm_storage_share_file" in
  let __attrs =
    ({
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_length = Prop.computed __type __id "content_length";
       content_md5 = Prop.computed __type __id "content_md5";
       content_type = Prop.computed __type __id "content_type";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       source = Prop.computed __type __id "source";
       storage_share_id =
         Prop.computed __type __id "storage_share_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_share_file
        (azurerm_storage_share_file ?content_disposition
           ?content_encoding ?content_md5 ?content_type ?id ?metadata
           ?path ?source ?timeouts ~name ~storage_share_id ());
    attrs = __attrs;
  }

let register ?tf_module ?content_disposition ?content_encoding
    ?content_md5 ?content_type ?id ?metadata ?path ?source ?timeouts
    ~name ~storage_share_id __id =
  let (r : _ Tf_core.resource) =
    make ?content_disposition ?content_encoding ?content_md5
      ?content_type ?id ?metadata ?path ?source ?timeouts ~name
      ~storage_share_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
