(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_primary_ip = {
  assignee_id : float prop option; [@option]
  id : float prop option; [@option]
  ip_address : string prop option; [@option]
  name : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_primary_ip) -> ()

let yojson_of_hcloud_primary_ip =
  (function
   | {
       assignee_id = v_assignee_id;
       id = v_id;
       ip_address = v_ip_address;
       name = v_name;
       with_selector = v_with_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_selector", arg in
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
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
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

let hcloud_primary_ip ?assignee_id ?id ?ip_address ?name
    ?with_selector () : hcloud_primary_ip =
  { assignee_id; id; ip_address; name; with_selector }

type t = {
  tf_name : string;
  assignee_id : float prop;
  assignee_type : string prop;
  auto_delete : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  id : float prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  type_ : string prop;
  with_selector : string prop;
}

let make ?assignee_id ?id ?ip_address ?name ?with_selector __id =
  let __type = "hcloud_primary_ip" in
  let __attrs =
    ({
       tf_name = __id;
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
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_primary_ip
        (hcloud_primary_ip ?assignee_id ?id ?ip_address ?name
           ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?assignee_id ?id ?ip_address ?name
    ?with_selector __id =
  let (r : _ Tf_core.resource) =
    make ?assignee_id ?id ?ip_address ?name ?with_selector __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
