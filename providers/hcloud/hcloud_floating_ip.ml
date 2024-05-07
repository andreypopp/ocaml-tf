(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_floating_ip = {
  delete_protection : bool prop option; [@option]
  description : string prop option; [@option]
  home_location : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  server_id : float prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_floating_ip) -> ()

let yojson_of_hcloud_floating_ip =
  (function
   | {
       delete_protection = v_delete_protection;
       description = v_description;
       home_location = v_home_location;
       id = v_id;
       labels = v_labels;
       name = v_name;
       server_id = v_server_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_server_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_home_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "home_location", arg in
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
       let bnds =
         match v_delete_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_protection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_floating_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_floating_ip

[@@@deriving.end]

let hcloud_floating_ip ?delete_protection ?description ?home_location
    ?id ?labels ?name ?server_id ~type_ () : hcloud_floating_ip =
  {
    delete_protection;
    description;
    home_location;
    id;
    labels;
    name;
    server_id;
    type_;
  }

type t = {
  tf_name : string;
  delete_protection : bool prop;
  description : string prop;
  home_location : string prop;
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  server_id : float prop;
  type_ : string prop;
}

let make ?delete_protection ?description ?home_location ?id ?labels
    ?name ?server_id ~type_ __id =
  let __type = "hcloud_floating_ip" in
  let __attrs =
    ({
       tf_name = __id;
       delete_protection =
         Prop.computed __type __id "delete_protection";
       description = Prop.computed __type __id "description";
       home_location = Prop.computed __type __id "home_location";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       ip_network = Prop.computed __type __id "ip_network";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_floating_ip
        (hcloud_floating_ip ?delete_protection ?description
           ?home_location ?id ?labels ?name ?server_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_protection ?description
    ?home_location ?id ?labels ?name ?server_id ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?delete_protection ?description ?home_location ?id ?labels
      ?name ?server_id ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
