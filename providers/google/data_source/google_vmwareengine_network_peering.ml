(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_vmwareengine_network_peering = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_network_peering) -> ()

let yojson_of_google_vmwareengine_network_peering =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_vmwareengine_network_peering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_network_peering

[@@@deriving.end]

let google_vmwareengine_network_peering ?id ?project ~name () :
    google_vmwareengine_network_peering =
  { id; name; project }

type t = {
  create_time : string prop;
  description : string prop;
  export_custom_routes : bool prop;
  export_custom_routes_with_public_ip : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  import_custom_routes_with_public_ip : bool prop;
  name : string prop;
  peer_network : string prop;
  peer_network_type : string prop;
  project : string prop;
  state : string prop;
  state_details : string prop;
  uid : string prop;
  update_time : string prop;
  vmware_engine_network : string prop;
  vmware_engine_network_canonical : string prop;
}

let make ?id ?project ~name __id =
  let __type = "google_vmwareengine_network_peering" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       export_custom_routes =
         Prop.computed __type __id "export_custom_routes";
       export_custom_routes_with_public_ip =
         Prop.computed __type __id
           "export_custom_routes_with_public_ip";
       id = Prop.computed __type __id "id";
       import_custom_routes =
         Prop.computed __type __id "import_custom_routes";
       import_custom_routes_with_public_ip =
         Prop.computed __type __id
           "import_custom_routes_with_public_ip";
       name = Prop.computed __type __id "name";
       peer_network = Prop.computed __type __id "peer_network";
       peer_network_type =
         Prop.computed __type __id "peer_network_type";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       state_details = Prop.computed __type __id "state_details";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       vmware_engine_network =
         Prop.computed __type __id "vmware_engine_network";
       vmware_engine_network_canonical =
         Prop.computed __type __id "vmware_engine_network_canonical";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_network_peering
        (google_vmwareengine_network_peering ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
