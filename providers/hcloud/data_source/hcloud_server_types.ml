(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type server_types = {
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
[@@deriving_inline yojson_of]

let _ = fun (_ : server_types) -> ()

let yojson_of_server_types =
  (function
   | {
       architecture = v_architecture;
       cores = v_cores;
       cpu_type = v_cpu_type;
       deprecation_announced = v_deprecation_announced;
       description = v_description;
       disk = v_disk;
       id = v_id;
       included_traffic = v_included_traffic;
       is_deprecated = v_is_deprecated;
       memory = v_memory;
       name = v_name;
       storage_type = v_storage_type;
       unavailable_after = v_unavailable_after;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_unavailable_after
         in
         ("unavailable_after", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_type in
         ("storage_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory in
         ("memory", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_deprecated in
         ("is_deprecated", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_included_traffic
         in
         ("included_traffic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk in
         ("disk", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_deprecation_announced
         in
         ("deprecation_announced", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cpu_type in
         ("cpu_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cores in
         ("cores", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_architecture in
         ("architecture", arg) :: bnds
       in
       `Assoc bnds
    : server_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_types

[@@@deriving.end]

type hcloud_server_types = {
  id : string prop option; [@option]
  server_type_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_server_types) -> ()

let yojson_of_hcloud_server_types =
  (function
   | { id = v_id; server_type_ids = v_server_type_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_server_type_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "server_type_ids", arg in
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
       `Assoc bnds
    : hcloud_server_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_server_types

[@@@deriving.end]

let hcloud_server_types ?id ?server_type_ids () : hcloud_server_types
    =
  { id; server_type_ids }

type t = {
  descriptions : string list prop;
  id : string prop;
  names : string list prop;
  server_type_ids : string list prop;
  server_types : server_types list prop;
}

let make ?id ?server_type_ids __id =
  let __type = "hcloud_server_types" in
  let __attrs =
    ({
       descriptions = Prop.computed __type __id "descriptions";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
       server_type_ids = Prop.computed __type __id "server_type_ids";
       server_types = Prop.computed __type __id "server_types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_server_types
        (hcloud_server_types ?id ?server_type_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?server_type_ids __id =
  let (r : _ Tf_core.resource) = make ?id ?server_type_ids __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
