(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate__file *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate__sds *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate = {
  file :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate__file
    list;
  sds :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
      (** certificate_authority_arns *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__acm *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__file *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__sds *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust = {
  acm :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__acm
    list;
  file :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__file
    list;
  sds :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation = {
  subject_alternative_names :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation__trust
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls = {
  enforce : bool prop option; [@option]  (** enforce *)
  ports : float prop list option; [@option]  (** ports *)
  certificate :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__certificate
    list;
  validation :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls__validation
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls *)

type aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy = {
  tls :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy__tls
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy *)

type aws_appmesh_virtual_gateway__spec__backend_defaults = {
  client_policy :
    aws_appmesh_virtual_gateway__spec__backend_defaults__client_policy
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__backend_defaults *)

type aws_appmesh_virtual_gateway__spec__listener__connection_pool__grpc = {
  max_requests : float prop;  (** max_requests *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__connection_pool__grpc *)

type aws_appmesh_virtual_gateway__spec__listener__connection_pool__http = {
  max_connections : float prop;  (** max_connections *)
  max_pending_requests : float prop option; [@option]
      (** max_pending_requests *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__connection_pool__http *)

type aws_appmesh_virtual_gateway__spec__listener__connection_pool__http2 = {
  max_requests : float prop;  (** max_requests *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__connection_pool__http2 *)

type aws_appmesh_virtual_gateway__spec__listener__connection_pool = {
  grpc :
    aws_appmesh_virtual_gateway__spec__listener__connection_pool__grpc
    list;
  http :
    aws_appmesh_virtual_gateway__spec__listener__connection_pool__http
    list;
  http2 :
    aws_appmesh_virtual_gateway__spec__listener__connection_pool__http2
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__connection_pool *)

type aws_appmesh_virtual_gateway__spec__listener__health_check = {
  healthy_threshold : float prop;  (** healthy_threshold *)
  interval_millis : float prop;  (** interval_millis *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop;  (** protocol *)
  timeout_millis : float prop;  (** timeout_millis *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__health_check *)

type aws_appmesh_virtual_gateway__spec__listener__port_mapping = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__port_mapping *)

type aws_appmesh_virtual_gateway__spec__listener__tls__certificate__acm = {
  certificate_arn : string prop;  (** certificate_arn *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__certificate__acm *)

type aws_appmesh_virtual_gateway__spec__listener__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__certificate__file *)

type aws_appmesh_virtual_gateway__spec__listener__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__certificate__sds *)

type aws_appmesh_virtual_gateway__spec__listener__tls__certificate = {
  acm :
    aws_appmesh_virtual_gateway__spec__listener__tls__certificate__acm
    list;
  file :
    aws_appmesh_virtual_gateway__spec__listener__tls__certificate__file
    list;
  sds :
    aws_appmesh_virtual_gateway__spec__listener__tls__certificate__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__certificate *)

type aws_appmesh_virtual_gateway__spec__listener__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__validation__subject_alternative_names__match *)

type aws_appmesh_virtual_gateway__spec__listener__tls__validation__subject_alternative_names = {
  match_ :
    aws_appmesh_virtual_gateway__spec__listener__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__validation__subject_alternative_names *)

type aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust__file *)

type aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust__sds *)

type aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust = {
  file :
    aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust__file
    list;
  sds :
    aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust *)

type aws_appmesh_virtual_gateway__spec__listener__tls__validation = {
  subject_alternative_names :
    aws_appmesh_virtual_gateway__spec__listener__tls__validation__subject_alternative_names
    list;
  trust :
    aws_appmesh_virtual_gateway__spec__listener__tls__validation__trust
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls__validation *)

type aws_appmesh_virtual_gateway__spec__listener__tls = {
  mode : string prop;  (** mode *)
  certificate :
    aws_appmesh_virtual_gateway__spec__listener__tls__certificate
    list;
  validation :
    aws_appmesh_virtual_gateway__spec__listener__tls__validation list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener__tls *)

type aws_appmesh_virtual_gateway__spec__listener = {
  connection_pool :
    aws_appmesh_virtual_gateway__spec__listener__connection_pool list;
  health_check :
    aws_appmesh_virtual_gateway__spec__listener__health_check list;
  port_mapping :
    aws_appmesh_virtual_gateway__spec__listener__port_mapping list;
  tls : aws_appmesh_virtual_gateway__spec__listener__tls list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__listener *)

type aws_appmesh_virtual_gateway__spec__logging__access_log__file__format__json = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__logging__access_log__file__format__json *)

type aws_appmesh_virtual_gateway__spec__logging__access_log__file__format = {
  text : string prop option; [@option]  (** text *)
  json :
    aws_appmesh_virtual_gateway__spec__logging__access_log__file__format__json
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__logging__access_log__file__format *)

type aws_appmesh_virtual_gateway__spec__logging__access_log__file = {
  path : string prop;  (** path *)
  format :
    aws_appmesh_virtual_gateway__spec__logging__access_log__file__format
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__logging__access_log__file *)

type aws_appmesh_virtual_gateway__spec__logging__access_log = {
  file :
    aws_appmesh_virtual_gateway__spec__logging__access_log__file list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__logging__access_log *)

type aws_appmesh_virtual_gateway__spec__logging = {
  access_log :
    aws_appmesh_virtual_gateway__spec__logging__access_log list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec__logging *)

type aws_appmesh_virtual_gateway__spec = {
  backend_defaults :
    aws_appmesh_virtual_gateway__spec__backend_defaults list;
  listener : aws_appmesh_virtual_gateway__spec__listener list;
  logging : aws_appmesh_virtual_gateway__spec__logging list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway__spec *)

type aws_appmesh_virtual_gateway = {
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  spec : aws_appmesh_virtual_gateway__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_gateway *)

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

let aws_appmesh_virtual_gateway ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec __resource_id =
  let __resource_type = "aws_appmesh_virtual_gateway" in
  let __resource =
    ({ id; mesh_name; mesh_owner; name; tags; tags_all; spec }
      : aws_appmesh_virtual_gateway)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
