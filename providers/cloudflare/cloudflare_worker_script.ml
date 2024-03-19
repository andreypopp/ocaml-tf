(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type analytics_engine_binding = {
  dataset : string prop;
      (** The name of the Analytics Engine dataset to write to. *)
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
}
[@@deriving yojson_of]
(** analytics_engine_binding *)

type d1_database_binding = {
  database_id : string prop;
      (** Database ID of D1 database to use. *)
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
}
[@@deriving yojson_of]
(** d1_database_binding *)

type kv_namespace_binding = {
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
  namespace_id : string prop;
      (** ID of the KV namespace you want to use. *)
}
[@@deriving yojson_of]
(** kv_namespace_binding *)

type placement = {
  mode : string prop;
      (** The placement mode for the Worker. Available values: `smart`. *)
}
[@@deriving yojson_of]
(** placement *)

type plain_text_binding = {
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
  text : string prop;  (** The plain text you want to store. *)
}
[@@deriving yojson_of]
(** plain_text_binding *)

type queue_binding = {
  binding : string prop;
      (** The name of the global variable for the binding in your Worker code. *)
  queue : string prop;  (** Name of the queue you want to use. *)
}
[@@deriving yojson_of]
(** queue_binding *)

type r2_bucket_binding = {
  bucket_name : string prop;
      (** The name of the Bucket to bind to. *)
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
}
[@@deriving yojson_of]
(** r2_bucket_binding *)

type secret_text_binding = {
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
  text : string prop;  (** The secret text you want to store. *)
}
[@@deriving yojson_of]
(** secret_text_binding *)

type service_binding = {
  environment : string prop option; [@option]
      (** The name of the Worker environment to bind to. *)
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
  service : string prop;  (** The name of the Worker to bind to. *)
}
[@@deriving yojson_of]
(** service_binding *)

type webassembly_binding = {
  module_ : string prop; [@key "module"]
      (** The base64 encoded wasm module you want to store. *)
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
}
[@@deriving yojson_of]
(** webassembly_binding *)

type cloudflare_worker_script = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  compatibility_date : string prop option; [@option]
      (** The date to use for the compatibility flag. *)
  compatibility_flags : string prop list option; [@option]
      (** Compatibility flags used for Worker Scripts. *)
  content : string prop;  (** The script content. *)
  id : string prop option; [@option]  (** id *)
  logpush : bool prop option; [@option]
      (** Enabling allows Worker events to be sent to a defined Logpush destination. *)
  module_ : bool prop option; [@option] [@key "module"]
      (** Whether to upload Worker as a module. *)
  name : string prop;
      (** The name for the script. **Modifying this attribute will force creation of a new resource.** *)
  analytics_engine_binding : analytics_engine_binding list;
  d1_database_binding : d1_database_binding list;
  kv_namespace_binding : kv_namespace_binding list;
  placement : placement list;
  plain_text_binding : plain_text_binding list;
  queue_binding : queue_binding list;
  r2_bucket_binding : r2_bucket_binding list;
  secret_text_binding : secret_text_binding list;
  service_binding : service_binding list;
  webassembly_binding : webassembly_binding list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare worker script resource. In order for a script to be active, you'll also need to setup a `cloudflare_worker_route`. *)

let analytics_engine_binding ~dataset ~name () :
    analytics_engine_binding =
  { dataset; name }

let d1_database_binding ~database_id ~name () : d1_database_binding =
  { database_id; name }

let kv_namespace_binding ~name ~namespace_id () :
    kv_namespace_binding =
  { name; namespace_id }

let placement ~mode () : placement = { mode }

let plain_text_binding ~name ~text () : plain_text_binding =
  { name; text }

let queue_binding ~binding ~queue () : queue_binding =
  { binding; queue }

let r2_bucket_binding ~bucket_name ~name () : r2_bucket_binding =
  { bucket_name; name }

let secret_text_binding ~name ~text () : secret_text_binding =
  { name; text }

let service_binding ?environment ~name ~service () : service_binding
    =
  { environment; name; service }

let webassembly_binding ~module_ ~name () : webassembly_binding =
  { module_; name }

let cloudflare_worker_script ?compatibility_date ?compatibility_flags
    ?id ?logpush ?module_ ~account_id ~content ~name
    ~analytics_engine_binding ~d1_database_binding
    ~kv_namespace_binding ~placement ~plain_text_binding
    ~queue_binding ~r2_bucket_binding ~secret_text_binding
    ~service_binding ~webassembly_binding () :
    cloudflare_worker_script =
  {
    account_id;
    compatibility_date;
    compatibility_flags;
    content;
    id;
    logpush;
    module_;
    name;
    analytics_engine_binding;
    d1_database_binding;
    kv_namespace_binding;
    placement;
    plain_text_binding;
    queue_binding;
    r2_bucket_binding;
    secret_text_binding;
    service_binding;
    webassembly_binding;
  }

type t = {
  account_id : string prop;
  compatibility_date : string prop;
  compatibility_flags : string list prop;
  content : string prop;
  id : string prop;
  logpush : bool prop;
  module_ : bool prop;
  name : string prop;
}

let register ?tf_module ?compatibility_date ?compatibility_flags ?id
    ?logpush ?module_ ~account_id ~content ~name
    ~analytics_engine_binding ~d1_database_binding
    ~kv_namespace_binding ~placement ~plain_text_binding
    ~queue_binding ~r2_bucket_binding ~secret_text_binding
    ~service_binding ~webassembly_binding __resource_id =
  let __resource_type = "cloudflare_worker_script" in
  let __resource =
    cloudflare_worker_script ?compatibility_date ?compatibility_flags
      ?id ?logpush ?module_ ~account_id ~content ~name
      ~analytics_engine_binding ~d1_database_binding
      ~kv_namespace_binding ~placement ~plain_text_binding
      ~queue_binding ~r2_bucket_binding ~secret_text_binding
      ~service_binding ~webassembly_binding ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_script __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       compatibility_date =
         Prop.computed __resource_type __resource_id
           "compatibility_date";
       compatibility_flags =
         Prop.computed __resource_type __resource_id
           "compatibility_flags";
       content =
         Prop.computed __resource_type __resource_id "content";
       id = Prop.computed __resource_type __resource_id "id";
       logpush =
         Prop.computed __resource_type __resource_id "logpush";
       module_ = Prop.computed __resource_type __resource_id "module";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
