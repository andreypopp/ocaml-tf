(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type image_pull_secret = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A list of references to secrets in the same namespace to use for pulling any images in pods that reference this Service Account. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod *)

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the service account that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the service account. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the service account, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the service account must be unique. *)
}
[@@deriving yojson_of]
(** Standard service account's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type secret = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A list of secrets allowed to be used by pods running using this Service Account. More info: https://kubernetes.io/docs/concepts/configuration/secret *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type kubernetes_default_service_account = {
  automount_service_account_token : bool prop option; [@option]
      (** Enable automatic mounting of the service account token *)
  id : string prop option; [@option]  (** id *)
  image_pull_secret : image_pull_secret list;
  metadata : metadata list;
  secret : secret list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_default_service_account *)

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
  automount_service_account_token : bool prop;
  default_secret_name : string prop;
  id : string prop;
}

let make ?automount_service_account_token ?id ?timeouts
    ~image_pull_secret ~metadata ~secret __id =
  let __type = "kubernetes_default_service_account" in
  let __attrs =
    ({
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
