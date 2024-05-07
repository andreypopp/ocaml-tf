(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_server_type = {
  deprecation_announced : string prop option; [@option]
  id : float prop option; [@option]
  name : string prop option; [@option]
  unavailable_after : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_server_type) -> ()

let yojson_of_hcloud_server_type =
  (function
   | {
       deprecation_announced = v_deprecation_announced;
       id = v_id;
       name = v_name;
       unavailable_after = v_unavailable_after;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unavailable_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unavailable_after", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deprecation_announced with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deprecation_announced", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_server_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_server_type

[@@@deriving.end]

let hcloud_server_type ?deprecation_announced ?id ?name
    ?unavailable_after () : hcloud_server_type =
  { deprecation_announced; id; name; unavailable_after }

type t = {
  tf_name : string;
  architecture : string prop;
  cores : float prop;
  cpu_type : string prop;
  deprecation_announced : string prop;
  description : string prop;
  disk : float prop;
  id : float prop;
  included_traffic : float prop;
  is_deprecated : bool prop;
  memory : float prop;
  name : string prop;
  storage_type : string prop;
  unavailable_after : string prop;
}

let make ?deprecation_announced ?id ?name ?unavailable_after __id =
  let __type = "hcloud_server_type" in
  let __attrs =
    ({
       tf_name = __id;
       architecture = Prop.computed __type __id "architecture";
       cores = Prop.computed __type __id "cores";
       cpu_type = Prop.computed __type __id "cpu_type";
       deprecation_announced =
         Prop.computed __type __id "deprecation_announced";
       description = Prop.computed __type __id "description";
       disk = Prop.computed __type __id "disk";
       id = Prop.computed __type __id "id";
       included_traffic =
         Prop.computed __type __id "included_traffic";
       is_deprecated = Prop.computed __type __id "is_deprecated";
       memory = Prop.computed __type __id "memory";
       name = Prop.computed __type __id "name";
       storage_type = Prop.computed __type __id "storage_type";
       unavailable_after =
         Prop.computed __type __id "unavailable_after";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_server_type
        (hcloud_server_type ?deprecation_announced ?id ?name
           ?unavailable_after ());
    attrs = __attrs;
  }

let register ?tf_module ?deprecation_announced ?id ?name
    ?unavailable_after __id =
  let (r : _ Tf_core.resource) =
    make ?deprecation_announced ?id ?name ?unavailable_after __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
