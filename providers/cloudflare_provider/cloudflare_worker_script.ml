(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_worker_script__analytics_engine_binding = {
  dataset : string;
      (** The name of the Analytics Engine dataset to write to. *)
  name : string;
      (** The global variable for the binding in your Worker code. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__analytics_engine_binding *)

type cloudflare_worker_script__d1_database_binding = {
  database_id : string;  (** Database ID of D1 database to use. *)
  name : string;
      (** The global variable for the binding in your Worker code. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__d1_database_binding *)

type cloudflare_worker_script__kv_namespace_binding = {
  name : string;
      (** The global variable for the binding in your Worker code. *)
  namespace_id : string;
      (** ID of the KV namespace you want to use. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__kv_namespace_binding *)

type cloudflare_worker_script__placement = {
  mode : string;
      (** The placement mode for the Worker. Available values: `smart`. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__placement *)

type cloudflare_worker_script__plain_text_binding = {
  name : string;
      (** The global variable for the binding in your Worker code. *)
  text : string;  (** The plain text you want to store. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__plain_text_binding *)

type cloudflare_worker_script__queue_binding = {
  binding : string;
      (** The name of the global variable for the binding in your Worker code. *)
  queue : string;  (** Name of the queue you want to use. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__queue_binding *)

type cloudflare_worker_script__r2_bucket_binding = {
  bucket_name : string;  (** The name of the Bucket to bind to. *)
  name : string;
      (** The global variable for the binding in your Worker code. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__r2_bucket_binding *)

type cloudflare_worker_script__secret_text_binding = {
  name : string;
      (** The global variable for the binding in your Worker code. *)
  text : string;  (** The secret text you want to store. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__secret_text_binding *)

type cloudflare_worker_script__service_binding = {
  environment : string option; [@option]
      (** The name of the Worker environment to bind to. *)
  name : string;
      (** The global variable for the binding in your Worker code. *)
  service : string;  (** The name of the Worker to bind to. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__service_binding *)

type cloudflare_worker_script__webassembly_binding = {
  module_ : string; [@key "module"]
      (** The base64 encoded wasm module you want to store. *)
  name : string;
      (** The global variable for the binding in your Worker code. *)
}
[@@deriving yojson_of]
(** cloudflare_worker_script__webassembly_binding *)

type cloudflare_worker_script = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  compatibility_date : string option; [@option]
      (** The date to use for the compatibility flag. *)
  compatibility_flags : string list option; [@option]
      (** Compatibility flags used for Worker Scripts. *)
  content : string;  (** The script content. *)
  id : string option; [@option]  (** id *)
  logpush : bool option; [@option]
      (** Enabling allows Worker events to be sent to a defined Logpush destination. *)
  module_ : bool option; [@option] [@key "module"]
      (** Whether to upload Worker as a module. *)
  name : string;
      (** The name for the script. **Modifying this attribute will force creation of a new resource.** *)
  analytics_engine_binding :
    cloudflare_worker_script__analytics_engine_binding list;
  d1_database_binding :
    cloudflare_worker_script__d1_database_binding list;
  kv_namespace_binding :
    cloudflare_worker_script__kv_namespace_binding list;
  placement : cloudflare_worker_script__placement list;
  plain_text_binding :
    cloudflare_worker_script__plain_text_binding list;
  queue_binding : cloudflare_worker_script__queue_binding list;
  r2_bucket_binding :
    cloudflare_worker_script__r2_bucket_binding list;
  secret_text_binding :
    cloudflare_worker_script__secret_text_binding list;
  service_binding : cloudflare_worker_script__service_binding list;
  webassembly_binding :
    cloudflare_worker_script__webassembly_binding list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare worker script resource. In order for a script to be active, you'll also need to setup a `cloudflare_worker_route`. *)

let cloudflare_worker_script ?compatibility_date ?compatibility_flags
    ?id ?logpush ?module_ ~account_id ~content ~name
    ~analytics_engine_binding ~d1_database_binding
    ~kv_namespace_binding ~placement ~plain_text_binding
    ~queue_binding ~r2_bucket_binding ~secret_text_binding
    ~service_binding ~webassembly_binding __resource_id =
  let __resource_type = "cloudflare_worker_script" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_script __resource);
  ()
