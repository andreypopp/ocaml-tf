(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secrets__topics = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets__topics) -> ()

let yojson_of_secrets__topics =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : secrets__topics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets__topics

[@@@deriving.end]

type secrets__rotation = {
  next_rotation_time : string prop;
  rotation_period : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets__rotation) -> ()

let yojson_of_secrets__rotation =
  (function
   | {
       next_rotation_time = v_next_rotation_time;
       rotation_period = v_rotation_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rotation_period
         in
         ("rotation_period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_rotation_time
         in
         ("next_rotation_time", arg) :: bnds
       in
       `Assoc bnds
    : secrets__rotation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets__rotation

[@@@deriving.end]

type secrets__replication__user_managed__replicas__customer_managed_encryption = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       secrets__replication__user_managed__replicas__customer_managed_encryption) ->
  ()

let yojson_of_secrets__replication__user_managed__replicas__customer_managed_encryption
    =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : secrets__replication__user_managed__replicas__customer_managed_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_secrets__replication__user_managed__replicas__customer_managed_encryption

[@@@deriving.end]

type secrets__replication__user_managed__replicas = {
  customer_managed_encryption :
    secrets__replication__user_managed__replicas__customer_managed_encryption
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  location : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets__replication__user_managed__replicas) -> ()

let yojson_of_secrets__replication__user_managed__replicas =
  (function
   | {
       customer_managed_encryption = v_customer_managed_encryption;
       location = v_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_customer_managed_encryption then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_secrets__replication__user_managed__replicas__customer_managed_encryption)
               v_customer_managed_encryption
           in
           let bnd = "customer_managed_encryption", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : secrets__replication__user_managed__replicas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets__replication__user_managed__replicas

[@@@deriving.end]

type secrets__replication__user_managed = {
  replicas : secrets__replication__user_managed__replicas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets__replication__user_managed) -> ()

let yojson_of_secrets__replication__user_managed =
  (function
   | { replicas = v_replicas } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_replicas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_secrets__replication__user_managed__replicas)
               v_replicas
           in
           let bnd = "replicas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : secrets__replication__user_managed ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets__replication__user_managed

[@@@deriving.end]

type secrets__replication__auto__customer_managed_encryption = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : secrets__replication__auto__customer_managed_encryption) ->
  ()

let yojson_of_secrets__replication__auto__customer_managed_encryption
    =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : secrets__replication__auto__customer_managed_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_secrets__replication__auto__customer_managed_encryption

[@@@deriving.end]

type secrets__replication__auto = {
  customer_managed_encryption :
    secrets__replication__auto__customer_managed_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets__replication__auto) -> ()

let yojson_of_secrets__replication__auto =
  (function
   | { customer_managed_encryption = v_customer_managed_encryption }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_customer_managed_encryption then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_secrets__replication__auto__customer_managed_encryption)
               v_customer_managed_encryption
           in
           let bnd = "customer_managed_encryption", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : secrets__replication__auto -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets__replication__auto

[@@@deriving.end]

type secrets__replication = {
  auto : secrets__replication__auto list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_managed : secrets__replication__user_managed list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets__replication) -> ()

let yojson_of_secrets__replication =
  (function
   | { auto = v_auto; user_managed = v_user_managed } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_managed then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_secrets__replication__user_managed)
               v_user_managed
           in
           let bnd = "user_managed", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secrets__replication__auto)
               v_auto
           in
           let bnd = "auto", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : secrets__replication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets__replication

[@@@deriving.end]

type secrets = {
  annotations : (string * string prop) list;
  create_time : string prop;
  effective_annotations : (string * string prop) list;
  effective_labels : (string * string prop) list;
  expire_time : string prop;
  labels : (string * string prop) list;
  name : string prop;
  project : string prop;
  replication : secrets__replication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rotation : secrets__rotation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret_id : string prop;
  terraform_labels : (string * string prop) list;
  topics : secrets__topics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ttl : string prop;
  version_aliases : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets) -> ()

let yojson_of_secrets =
  (function
   | {
       annotations = v_annotations;
       create_time = v_create_time;
       effective_annotations = v_effective_annotations;
       effective_labels = v_effective_labels;
       expire_time = v_expire_time;
       labels = v_labels;
       name = v_name;
       project = v_project;
       replication = v_replication;
       rotation = v_rotation;
       secret_id = v_secret_id;
       terraform_labels = v_terraform_labels;
       topics = v_topics;
       ttl = v_ttl;
       version_aliases = v_version_aliases;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_version_aliases
         in
         ("version_aliases", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_topics then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secrets__topics) v_topics
           in
           let bnd = "topics", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_terraform_labels
         in
         ("terraform_labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rotation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secrets__rotation) v_rotation
           in
           let bnd = "rotation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_replication then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secrets__replication)
               v_replication
           in
           let bnd = "replication", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expire_time in
         ("expire_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_effective_labels
         in
         ("effective_labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_effective_annotations
         in
         ("effective_annotations", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_annotations
         in
         ("annotations", arg) :: bnds
       in
       `Assoc bnds
    : secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets

[@@@deriving.end]

type google_secret_manager_secrets = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_secret_manager_secrets) -> ()

let yojson_of_google_secret_manager_secrets =
  (function
   | { filter = v_filter; id = v_id; project = v_project } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_secret_manager_secrets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_secret_manager_secrets

[@@@deriving.end]

let google_secret_manager_secrets ?filter ?id ?project () :
    google_secret_manager_secrets =
  { filter; id; project }

type t = {
  tf_name : string;
  filter : string prop;
  id : string prop;
  project : string prop;
  secrets : secrets list prop;
}

let make ?filter ?id ?project __id =
  let __type = "google_secret_manager_secrets" in
  let __attrs =
    ({
       tf_name = __id;
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       secrets = Prop.computed __type __id "secrets";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_secret_manager_secrets
        (google_secret_manager_secrets ?filter ?id ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id ?project __id =
  let (r : _ Tf_core.resource) = make ?filter ?id ?project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
