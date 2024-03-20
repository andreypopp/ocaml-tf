(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_primary_ip = {
  assignee_id : float prop option; [@option]
  assignee_type : string prop;
  auto_delete : bool prop;
  datacenter : string prop option; [@option]
  delete_protection : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_primary_ip) -> ()

let yojson_of_hcloud_primary_ip =
  (function
   | {
       assignee_id = v_assignee_id;
       assignee_type = v_assignee_type;
       auto_delete = v_auto_delete;
       datacenter = v_datacenter;
       delete_protection = v_delete_protection;
       id = v_id;
       labels = v_labels;
       name = v_name;
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
         match v_delete_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datacenter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datacenter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_delete in
         ("auto_delete", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_assignee_type in
         ("assignee_type", arg) :: bnds
       in
       let bnds =
         match v_assignee_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "assignee_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_primary_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_primary_ip

[@@@deriving.end]

let hcloud_primary_ip ?assignee_id ?datacenter ?delete_protection ?id
    ?labels ?name ~assignee_type ~auto_delete ~type_ () :
    hcloud_primary_ip =
  {
    assignee_id;
    assignee_type;
    auto_delete;
    datacenter;
    delete_protection;
    id;
    labels;
    name;
    type_;
  }

type t = {
  assignee_id : float prop;
  assignee_type : string prop;
  auto_delete : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  type_ : string prop;
}

let make ?assignee_id ?datacenter ?delete_protection ?id ?labels
    ?name ~assignee_type ~auto_delete ~type_ __id =
  let __type = "hcloud_primary_ip" in
  let __attrs =
    ({
       assignee_id = Prop.computed __type __id "assignee_id";
       assignee_type = Prop.computed __type __id "assignee_type";
       auto_delete = Prop.computed __type __id "auto_delete";
       datacenter = Prop.computed __type __id "datacenter";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       ip_network = Prop.computed __type __id "ip_network";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_primary_ip
        (hcloud_primary_ip ?assignee_id ?datacenter
           ?delete_protection ?id ?labels ?name ~assignee_type
           ~auto_delete ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?assignee_id ?datacenter ?delete_protection
    ?id ?labels ?name ~assignee_type ~auto_delete ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?assignee_id ?datacenter ?delete_protection ?id ?labels
      ?name ~assignee_type ~auto_delete ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
