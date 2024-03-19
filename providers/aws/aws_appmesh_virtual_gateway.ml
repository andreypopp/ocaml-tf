(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type spec__backend_defaults__client_policy__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__certificate__file *)

type spec__backend_defaults__client_policy__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__certificate__sds *)

type spec__backend_defaults__client_policy__tls__certificate = {
  file :
    spec__backend_defaults__client_policy__tls__certificate__file
    list;
  sds :
    spec__backend_defaults__client_policy__tls__certificate__sds list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__certificate *)

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match *)

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__subject_alternative_names *)

type spec__backend_defaults__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
      (** certificate_authority_arns *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__trust__acm *)

type spec__backend_defaults__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__trust__file *)

type spec__backend_defaults__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__trust__sds *)

type spec__backend_defaults__client_policy__tls__validation__trust = {
  acm :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    list;
  file :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    list;
  sds :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__trust *)

type spec__backend_defaults__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    spec__backend_defaults__client_policy__tls__validation__trust
    list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation *)

type spec__backend_defaults__client_policy__tls = {
  enforce : bool prop option; [@option]  (** enforce *)
  ports : float prop list option; [@option]  (** ports *)
  certificate :
    spec__backend_defaults__client_policy__tls__certificate list;
  validation :
    spec__backend_defaults__client_policy__tls__validation list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls *)

type spec__backend_defaults__client_policy = {
  tls : spec__backend_defaults__client_policy__tls list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy *)

type spec__backend_defaults = {
  client_policy : spec__backend_defaults__client_policy list;
}
[@@deriving yojson_of]
(** spec__backend_defaults *)

type spec__listener__connection_pool__grpc = {
  max_requests : float prop;  (** max_requests *)
}
[@@deriving yojson_of]
(** spec__listener__connection_pool__grpc *)

type spec__listener__connection_pool__http = {
  max_connections : float prop;  (** max_connections *)
  max_pending_requests : float prop option; [@option]
      (** max_pending_requests *)
}
[@@deriving yojson_of]
(** spec__listener__connection_pool__http *)

type spec__listener__connection_pool__http2 = {
  max_requests : float prop;  (** max_requests *)
}
[@@deriving yojson_of]
(** spec__listener__connection_pool__http2 *)

type spec__listener__connection_pool = {
  grpc : spec__listener__connection_pool__grpc list;
  http : spec__listener__connection_pool__http list;
  http2 : spec__listener__connection_pool__http2 list;
}
[@@deriving yojson_of]
(** spec__listener__connection_pool *)

type spec__listener__health_check = {
  healthy_threshold : float prop;  (** healthy_threshold *)
  interval_millis : float prop;  (** interval_millis *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop;  (** protocol *)
  timeout_millis : float prop;  (** timeout_millis *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** spec__listener__health_check *)

type spec__listener__port_mapping = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** spec__listener__port_mapping *)

type spec__listener__tls__certificate__acm = {
  certificate_arn : string prop;  (** certificate_arn *)
}
[@@deriving yojson_of]
(** spec__listener__tls__certificate__acm *)

type spec__listener__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** spec__listener__tls__certificate__file *)

type spec__listener__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__listener__tls__certificate__sds *)

type spec__listener__tls__certificate = {
  acm : spec__listener__tls__certificate__acm list;
  file : spec__listener__tls__certificate__file list;
  sds : spec__listener__tls__certificate__sds list;
}
[@@deriving yojson_of]
(** spec__listener__tls__certificate *)

type spec__listener__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__subject_alternative_names__match *)

type spec__listener__tls__validation__subject_alternative_names = {
  match_ :
    spec__listener__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__subject_alternative_names *)

type spec__listener__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__trust__file *)

type spec__listener__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__trust__sds *)

type spec__listener__tls__validation__trust = {
  file : spec__listener__tls__validation__trust__file list;
  sds : spec__listener__tls__validation__trust__sds list;
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__trust *)

type spec__listener__tls__validation = {
  subject_alternative_names :
    spec__listener__tls__validation__subject_alternative_names list;
  trust : spec__listener__tls__validation__trust list;
}
[@@deriving yojson_of]
(** spec__listener__tls__validation *)

type spec__listener__tls = {
  mode : string prop;  (** mode *)
  certificate : spec__listener__tls__certificate list;
  validation : spec__listener__tls__validation list;
}
[@@deriving yojson_of]
(** spec__listener__tls *)

type spec__listener = {
  connection_pool : spec__listener__connection_pool list;
  health_check : spec__listener__health_check list;
  port_mapping : spec__listener__port_mapping list;
  tls : spec__listener__tls list;
}
[@@deriving yojson_of]
(** spec__listener *)

type spec__logging__access_log__file__format__json = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__logging__access_log__file__format__json *)

type spec__logging__access_log__file__format = {
  text : string prop option; [@option]  (** text *)
  json : spec__logging__access_log__file__format__json list;
}
[@@deriving yojson_of]
(** spec__logging__access_log__file__format *)

type spec__logging__access_log__file = {
  path : string prop;  (** path *)
  format : spec__logging__access_log__file__format list;
}
[@@deriving yojson_of]
(** spec__logging__access_log__file *)

type spec__logging__access_log = {
  file : spec__logging__access_log__file list;
}
[@@deriving yojson_of]
(** spec__logging__access_log *)

type spec__logging = { access_log : spec__logging__access_log list }
[@@deriving yojson_of]
(** spec__logging *)

type spec = {
  backend_defaults : spec__backend_defaults list;
  listener : spec__listener list;
  logging : spec__logging list;
}
[@@deriving yojson_of]
(** spec *)

type aws_appmesh_virtual_gateway = {
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  spec : spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway *)

let spec__backend_defaults__client_policy__tls__certificate__file
    ~certificate_chain ~private_key () :
    spec__backend_defaults__client_policy__tls__certificate__file =
  { certificate_chain; private_key }

let spec__backend_defaults__client_policy__tls__certificate__sds
    ~secret_name () :
    spec__backend_defaults__client_policy__tls__certificate__sds =
  { secret_name }

let spec__backend_defaults__client_policy__tls__certificate ~file
    ~sds () : spec__backend_defaults__client_policy__tls__certificate
    =
  { file; sds }

let spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    ~exact () :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    =
  { exact }

let spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    ~match_ () :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    =
  { match_ }

let spec__backend_defaults__client_policy__tls__validation__trust__acm
    ~certificate_authority_arns () :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    =
  { certificate_authority_arns }

let spec__backend_defaults__client_policy__tls__validation__trust__file
    ~certificate_chain () :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    =
  { certificate_chain }

let spec__backend_defaults__client_policy__tls__validation__trust__sds
    ~secret_name () :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    =
  { secret_name }

let spec__backend_defaults__client_policy__tls__validation__trust
    ~acm ~file ~sds () :
    spec__backend_defaults__client_policy__tls__validation__trust =
  { acm; file; sds }

let spec__backend_defaults__client_policy__tls__validation
    ~subject_alternative_names ~trust () :
    spec__backend_defaults__client_policy__tls__validation =
  { subject_alternative_names; trust }

let spec__backend_defaults__client_policy__tls ?enforce ?ports
    ~certificate ~validation () :
    spec__backend_defaults__client_policy__tls =
  { enforce; ports; certificate; validation }

let spec__backend_defaults__client_policy ~tls () :
    spec__backend_defaults__client_policy =
  { tls }

let spec__backend_defaults ~client_policy () : spec__backend_defaults
    =
  { client_policy }

let spec__listener__connection_pool__grpc ~max_requests () :
    spec__listener__connection_pool__grpc =
  { max_requests }

let spec__listener__connection_pool__http ?max_pending_requests
    ~max_connections () : spec__listener__connection_pool__http =
  { max_connections; max_pending_requests }

let spec__listener__connection_pool__http2 ~max_requests () :
    spec__listener__connection_pool__http2 =
  { max_requests }

let spec__listener__connection_pool ~grpc ~http ~http2 () :
    spec__listener__connection_pool =
  { grpc; http; http2 }

let spec__listener__health_check ?path ?port ~healthy_threshold
    ~interval_millis ~protocol ~timeout_millis ~unhealthy_threshold
    () : spec__listener__health_check =
  {
    healthy_threshold;
    interval_millis;
    path;
    port;
    protocol;
    timeout_millis;
    unhealthy_threshold;
  }

let spec__listener__port_mapping ~port ~protocol () :
    spec__listener__port_mapping =
  { port; protocol }

let spec__listener__tls__certificate__acm ~certificate_arn () :
    spec__listener__tls__certificate__acm =
  { certificate_arn }

let spec__listener__tls__certificate__file ~certificate_chain
    ~private_key () : spec__listener__tls__certificate__file =
  { certificate_chain; private_key }

let spec__listener__tls__certificate__sds ~secret_name () :
    spec__listener__tls__certificate__sds =
  { secret_name }

let spec__listener__tls__certificate ~acm ~file ~sds () :
    spec__listener__tls__certificate =
  { acm; file; sds }

let spec__listener__tls__validation__subject_alternative_names__match
    ~exact () :
    spec__listener__tls__validation__subject_alternative_names__match
    =
  { exact }

let spec__listener__tls__validation__subject_alternative_names
    ~match_ () :
    spec__listener__tls__validation__subject_alternative_names =
  { match_ }

let spec__listener__tls__validation__trust__file ~certificate_chain
    () : spec__listener__tls__validation__trust__file =
  { certificate_chain }

let spec__listener__tls__validation__trust__sds ~secret_name () :
    spec__listener__tls__validation__trust__sds =
  { secret_name }

let spec__listener__tls__validation__trust ~file ~sds () :
    spec__listener__tls__validation__trust =
  { file; sds }

let spec__listener__tls__validation ~subject_alternative_names ~trust
    () : spec__listener__tls__validation =
  { subject_alternative_names; trust }

let spec__listener__tls ~mode ~certificate ~validation () :
    spec__listener__tls =
  { mode; certificate; validation }

let spec__listener ~connection_pool ~health_check ~port_mapping ~tls
    () : spec__listener =
  { connection_pool; health_check; port_mapping; tls }

let spec__logging__access_log__file__format__json ~key ~value () :
    spec__logging__access_log__file__format__json =
  { key; value }

let spec__logging__access_log__file__format ?text ~json () :
    spec__logging__access_log__file__format =
  { text; json }

let spec__logging__access_log__file ~path ~format () :
    spec__logging__access_log__file =
  { path; format }

let spec__logging__access_log ~file () : spec__logging__access_log =
  { file }

let spec__logging ~access_log () : spec__logging = { access_log }

let spec ~backend_defaults ~listener ~logging () : spec =
  { backend_defaults; listener; logging }

let aws_appmesh_virtual_gateway ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec () : aws_appmesh_virtual_gateway =
  { id; mesh_name; mesh_owner; name; tags; tags_all; spec }

type t = {
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~spec __resource_id =
  let __resource_type = "aws_appmesh_virtual_gateway" in
  let __resource =
    aws_appmesh_virtual_gateway ?id ?mesh_owner ?tags ?tags_all
      ~mesh_name ~name ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_virtual_gateway __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_date =
         Prop.computed __resource_type __resource_id
           "last_updated_date";
       mesh_name =
         Prop.computed __resource_type __resource_id "mesh_name";
       mesh_owner =
         Prop.computed __resource_type __resource_id "mesh_owner";
       name = Prop.computed __resource_type __resource_id "name";
       resource_owner =
         Prop.computed __resource_type __resource_id "resource_owner";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
