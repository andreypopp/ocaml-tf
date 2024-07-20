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

type azurerm_virtual_machine_gallery_application_assignment = {
  configuration_blob_uri : string prop option; [@option]
  gallery_application_version_id : string prop;
  id : string prop option; [@option]
  order : float prop option; [@option]
  tag : string prop option; [@option]
  virtual_machine_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_virtual_machine_gallery_application_assignment) ->
  ()

let yojson_of_azurerm_virtual_machine_gallery_application_assignment
    =
  (function
   | {
       configuration_blob_uri = v_configuration_blob_uri;
       gallery_application_version_id =
         v_gallery_application_version_id;
       id = v_id;
       order = v_order;
       tag = v_tag;
       virtual_machine_id = v_virtual_machine_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_id
         in
         ("virtual_machine_id", arg) :: bnds
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "order", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_gallery_application_version_id
         in
         ("gallery_application_version_id", arg) :: bnds
       in
       let bnds =
         match v_configuration_blob_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_blob_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_machine_gallery_application_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_virtual_machine_gallery_application_assignment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine_gallery_application_assignment
    ?configuration_blob_uri ?id ?order ?tag ?timeouts
    ~gallery_application_version_id ~virtual_machine_id () :
    azurerm_virtual_machine_gallery_application_assignment =
  {
    configuration_blob_uri;
    gallery_application_version_id;
    id;
    order;
    tag;
    virtual_machine_id;
    timeouts;
  }

type t = {
  tf_name : string;
  configuration_blob_uri : string prop;
  gallery_application_version_id : string prop;
  id : string prop;
  order : float prop;
  tag : string prop;
  virtual_machine_id : string prop;
}

let make ?configuration_blob_uri ?id ?order ?tag ?timeouts
    ~gallery_application_version_id ~virtual_machine_id __id =
  let __type =
    "azurerm_virtual_machine_gallery_application_assignment"
  in
  let __attrs =
    ({
       tf_name = __id;
       configuration_blob_uri =
         Prop.computed __type __id "configuration_blob_uri";
       gallery_application_version_id =
         Prop.computed __type __id "gallery_application_version_id";
       id = Prop.computed __type __id "id";
       order = Prop.computed __type __id "order";
       tag = Prop.computed __type __id "tag";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_gallery_application_assignment
        (azurerm_virtual_machine_gallery_application_assignment
           ?configuration_blob_uri ?id ?order ?tag ?timeouts
           ~gallery_application_version_id ~virtual_machine_id ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration_blob_uri ?id ?order ?tag
    ?timeouts ~gallery_application_version_id ~virtual_machine_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?configuration_blob_uri ?id ?order ?tag ?timeouts
      ~gallery_application_version_id ~virtual_machine_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
