(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type public_key = {
  id : string prop;
  managed : bool prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_key) -> ()

let yojson_of_public_key =
  (function
   | { id = v_id; managed = v_managed; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "managed", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : public_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_key

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type validation_shared_keys = { secret_version : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_shared_keys) -> ()

let yojson_of_validation_shared_keys =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : validation_shared_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_shared_keys

[@@@deriving.end]

type google_network_services_edge_cache_keyset = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  public_key : public_key list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  validation_shared_keys : validation_shared_keys list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_services_edge_cache_keyset) -> ()

let yojson_of_google_network_services_edge_cache_keyset =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       public_key = v_public_key;
       timeouts = v_timeouts;
       validation_shared_keys = v_validation_shared_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_validation_shared_keys then bnds
         else
           let arg =
             (yojson_of_list yojson_of_validation_shared_keys)
               v_validation_shared_keys
           in
           let bnd = "validation_shared_keys", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_public_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_public_key) v_public_key
           in
           let bnd = "public_key", arg in
           bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_network_services_edge_cache_keyset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_services_edge_cache_keyset

[@@@deriving.end]

let public_key ?managed ?value ~id () : public_key =
  { id; managed; value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let validation_shared_keys ~secret_version () :
    validation_shared_keys =
  { secret_version }

let google_network_services_edge_cache_keyset ?description ?id
    ?labels ?project ?(public_key = []) ?timeouts
    ?(validation_shared_keys = []) ~name () :
    google_network_services_edge_cache_keyset =
  {
    description;
    id;
    labels;
    name;
    project;
    public_key;
    timeouts;
    validation_shared_keys;
  }

type t = {
  tf_name : string;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?labels ?project ?(public_key = [])
    ?timeouts ?(validation_shared_keys = []) ~name __id =
  let __type = "google_network_services_edge_cache_keyset" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_services_edge_cache_keyset
        (google_network_services_edge_cache_keyset ?description ?id
           ?labels ?project ~public_key ?timeouts
           ~validation_shared_keys ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project
    ?(public_key = []) ?timeouts ?(validation_shared_keys = []) ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ~public_key ?timeouts
      ~validation_shared_keys ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
