(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type image_pull_secret = { name : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : image_pull_secret) -> ()

let yojson_of_image_pull_secret =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : image_pull_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_pull_secret

[@@@deriving.end]

type metadata = {
  annotations : string prop Tf_core.assoc option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       labels = v_labels;
       name = v_name;
       namespace = v_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
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
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type secret = { name : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : secret) -> ()

let yojson_of_secret =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type kubernetes_default_service_account = {
  automount_service_account_token : bool prop option; [@option]
  id : string prop option; [@option]
  image_pull_secret : image_pull_secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_default_service_account) -> ()

let yojson_of_kubernetes_default_service_account =
  (function
   | {
       automount_service_account_token =
         v_automount_service_account_token;
       id = v_id;
       image_pull_secret = v_image_pull_secret;
       metadata = v_metadata;
       secret = v_secret;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg = (yojson_of_list yojson_of_secret) v_secret in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image_pull_secret then bnds
         else
           let arg =
             (yojson_of_list yojson_of_image_pull_secret)
               v_image_pull_secret
           in
           let bnd = "image_pull_secret", arg in
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
         match v_automount_service_account_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automount_service_account_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kubernetes_default_service_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_default_service_account

[@@@deriving.end]

let image_pull_secret ?name () : image_pull_secret = { name }

let metadata ?annotations ?labels ?name ?namespace () : metadata =
  { annotations; labels; name; namespace }

let secret ?name () : secret = { name }
let timeouts ?create () : timeouts = { create }

let kubernetes_default_service_account
    ?automount_service_account_token ?id ?timeouts ~image_pull_secret
    ~metadata ~secret () : kubernetes_default_service_account =
  {
    automount_service_account_token;
    id;
    image_pull_secret;
    metadata;
    secret;
    timeouts;
  }

type t = {
  tf_name : string;
  automount_service_account_token : bool prop;
  default_secret_name : string prop;
  id : string prop;
}

let make ?automount_service_account_token ?id ?timeouts
    ~image_pull_secret ~metadata ~secret __id =
  let __type = "kubernetes_default_service_account" in
  let __attrs =
    ({
       tf_name = __id;
       automount_service_account_token =
         Prop.computed __type __id "automount_service_account_token";
       default_secret_name =
         Prop.computed __type __id "default_secret_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_default_service_account
        (kubernetes_default_service_account
           ?automount_service_account_token ?id ?timeouts
           ~image_pull_secret ~metadata ~secret ());
    attrs = __attrs;
  }

let register ?tf_module ?automount_service_account_token ?id
    ?timeouts ~image_pull_secret ~metadata ~secret __id =
  let (r : _ Tf_core.resource) =
    make ?automount_service_account_token ?id ?timeouts
      ~image_pull_secret ~metadata ~secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
