(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  location : string prop;
  customer_managed_encryption :
    replication__user_managed__replicas__customer_managed_encryption
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication__user_managed__replicas) -> ()

let yojson_of_replication__user_managed__replicas =
  (function
   | {
       location = v_location;
       customer_managed_encryption = v_customer_managed_encryption;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
  next_rotation_time : string prop option; [@option]
  rotation_period : string prop option; [@option]
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
         match v_rotation_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rotation_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_rotation_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_rotation_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rotation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rotation

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
  annotations : string prop Tf_core.assoc option; [@option]
  expire_time : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  project : string prop option; [@option]
  secret_id : string prop;
  ttl : string prop option; [@option]
  version_aliases : string prop Tf_core.assoc option; [@option]
  version_destroy_ttl : string prop option; [@option]
  replication : replication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rotation : rotation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  topics : topics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_secret_manager_secret) -> ()

let yojson_of_google_secret_manager_secret =
  (function
   | {
       annotations = v_annotations;
       expire_time = v_expire_time;
       id = v_id;
       labels = v_labels;
       project = v_project;
       secret_id = v_secret_id;
       ttl = v_ttl;
       version_aliases = v_version_aliases;
       version_destroy_ttl = v_version_destroy_ttl;
       replication = v_replication;
       rotation = v_rotation;
       timeouts = v_timeouts;
       topics = v_topics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_topics then bnds
         else
           let arg = (yojson_of_list yojson_of_topics) v_topics in
           let bnd = "topics", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rotation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rotation) v_rotation
           in
           let bnd = "rotation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_replication then bnds
         else
           let arg =
             (yojson_of_list yojson_of_replication) v_replication
           in
           let bnd = "replication", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version_destroy_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_destroy_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version_aliases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "version_aliases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ttl", arg in
             bnd :: bnds
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_expire_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expire_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_secret_manager_secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_secret_manager_secret

[@@@deriving.end]

let replication__auto__customer_managed_encryption ~kms_key_name () :
    replication__auto__customer_managed_encryption =
  { kms_key_name }

let replication__auto ?(customer_managed_encryption = []) () :
    replication__auto =
  { customer_managed_encryption }

let replication__user_managed__replicas__customer_managed_encryption
    ~kms_key_name () :
    replication__user_managed__replicas__customer_managed_encryption
    =
  { kms_key_name }

let replication__user_managed__replicas
    ?(customer_managed_encryption = []) ~location () :
    replication__user_managed__replicas =
  { location; customer_managed_encryption }

let replication__user_managed ~replicas () :
    replication__user_managed =
  { replicas }

let replication ?(auto = []) ?(user_managed = []) () : replication =
  { auto; user_managed }

let rotation ?next_rotation_time ?rotation_period () : rotation =
  { next_rotation_time; rotation_period }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let topics ~name () : topics = { name }

let google_secret_manager_secret ?annotations ?expire_time ?id
    ?labels ?project ?ttl ?version_aliases ?version_destroy_ttl
    ?(rotation = []) ?timeouts ?(topics = []) ~secret_id ~replication
    () : google_secret_manager_secret =
  {
    annotations;
    expire_time;
    id;
    labels;
    project;
    secret_id;
    ttl;
    version_aliases;
    version_destroy_ttl;
    replication;
    rotation;
    timeouts;
    topics;
  }

type t = {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  create_time : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  expire_time : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  secret_id : string prop;
  terraform_labels : string Tf_core.assoc prop;
  ttl : string prop;
  version_aliases : string Tf_core.assoc prop;
  version_destroy_ttl : string prop;
}

let make ?annotations ?expire_time ?id ?labels ?project ?ttl
    ?version_aliases ?version_destroy_ttl ?(rotation = []) ?timeouts
    ?(topics = []) ~secret_id ~replication __id =
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
       secret_id = Prop.computed __type __id "secret_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       ttl = Prop.computed __type __id "ttl";
       version_aliases = Prop.computed __type __id "version_aliases";
       version_destroy_ttl =
         Prop.computed __type __id "version_destroy_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_secret_manager_secret
        (google_secret_manager_secret ?annotations ?expire_time ?id
           ?labels ?project ?ttl ?version_aliases
           ?version_destroy_ttl ~rotation ?timeouts ~topics
           ~secret_id ~replication ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?expire_time ?id ?labels
    ?project ?ttl ?version_aliases ?version_destroy_ttl
    ?(rotation = []) ?timeouts ?(topics = []) ~secret_id ~replication
    __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?expire_time ?id ?labels ?project ?ttl
      ?version_aliases ?version_destroy_ttl ~rotation ?timeouts
      ~topics ~secret_id ~replication __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
