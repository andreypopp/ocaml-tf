(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type replication__user_managed__replicas__customer_managed_encryption = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       replication__user_managed__replicas__customer_managed_encryption) ->
  ()

let yojson_of_replication__user_managed__replicas__customer_managed_encryption
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
    : replication__user_managed__replicas__customer_managed_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_replication__user_managed__replicas__customer_managed_encryption

[@@@deriving.end]

type replication__user_managed__replicas = {
  customer_managed_encryption :
    replication__user_managed__replicas__customer_managed_encryption
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  location : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication__user_managed__replicas) -> ()

let yojson_of_replication__user_managed__replicas =
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
                yojson_of_replication__user_managed__replicas__customer_managed_encryption)
               v_customer_managed_encryption
           in
           let bnd = "customer_managed_encryption", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : replication__user_managed__replicas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication__user_managed__replicas

[@@@deriving.end]

type replication__user_managed = {
  replicas : replication__user_managed__replicas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication__user_managed) -> ()

let yojson_of_replication__user_managed =
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
                yojson_of_replication__user_managed__replicas)
               v_replicas
           in
           let bnd = "replicas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : replication__user_managed -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication__user_managed

[@@@deriving.end]

type replication__auto__customer_managed_encryption = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : replication__auto__customer_managed_encryption) -> ()

let yojson_of_replication__auto__customer_managed_encryption =
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
    : replication__auto__customer_managed_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication__auto__customer_managed_encryption

[@@@deriving.end]

type replication__auto = {
  customer_managed_encryption :
    replication__auto__customer_managed_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication__auto) -> ()

let yojson_of_replication__auto =
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
                yojson_of_replication__auto__customer_managed_encryption)
               v_customer_managed_encryption
           in
           let bnd = "customer_managed_encryption", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : replication__auto -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication__auto

[@@@deriving.end]

type replication = {
  auto : replication__auto list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_managed : replication__user_managed list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication) -> ()

let yojson_of_replication =
  (function
   | { auto = v_auto; user_managed = v_user_managed } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_managed then bnds
         else
           let arg =
             (yojson_of_list yojson_of_replication__user_managed)
               v_user_managed
           in
           let bnd = "user_managed", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto then bnds
         else
           let arg =
             (yojson_of_list yojson_of_replication__auto) v_auto
           in
           let bnd = "auto", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : replication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication

[@@@deriving.end]

type rotation = {
  next_rotation_time : string prop;
  rotation_period : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rotation) -> ()

let yojson_of_rotation =
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
    : rotation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rotation

[@@@deriving.end]

type topics = { name : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : topics) -> ()

let yojson_of_topics =
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
    : topics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_topics

[@@@deriving.end]

type google_secret_manager_secret = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  secret_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_secret_manager_secret) -> ()

let yojson_of_google_secret_manager_secret =
  (function
   | { id = v_id; project = v_project; secret_id = v_secret_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
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
       `Assoc bnds
    : google_secret_manager_secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_secret_manager_secret

[@@@deriving.end]

let google_secret_manager_secret ?id ?project ~secret_id () :
    google_secret_manager_secret =
  { id; project; secret_id }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  expire_time : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  replication : replication list prop;
  rotation : rotation list prop;
  secret_id : string prop;
  terraform_labels : (string * string) list prop;
  topics : topics list prop;
  ttl : string prop;
  version_aliases : (string * string) list prop;
}

let make ?id ?project ~secret_id __id =
  let __type = "google_secret_manager_secret" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       replication = Prop.computed __type __id "replication";
       rotation = Prop.computed __type __id "rotation";
       secret_id = Prop.computed __type __id "secret_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       topics = Prop.computed __type __id "topics";
       ttl = Prop.computed __type __id "ttl";
       version_aliases = Prop.computed __type __id "version_aliases";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_secret_manager_secret
        (google_secret_manager_secret ?id ?project ~secret_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~secret_id __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~secret_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
