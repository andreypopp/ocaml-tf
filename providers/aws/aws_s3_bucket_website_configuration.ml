(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type error_document = { key : string prop  (** key *) }
[@@deriving yojson_of]
(** error_document *)

type index_document = { suffix : string prop  (** suffix *) }
[@@deriving yojson_of]
(** index_document *)

type redirect_all_requests_to = {
  host_name : string prop;  (** host_name *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** redirect_all_requests_to *)

type routing_rule__condition = {
  http_error_code_returned_equals : string prop option; [@option]
      (** http_error_code_returned_equals *)
  key_prefix_equals : string prop option; [@option]
      (** key_prefix_equals *)
}
[@@deriving yojson_of]
(** routing_rule__condition *)

type routing_rule__redirect = {
  host_name : string prop option; [@option]  (** host_name *)
  http_redirect_code : string prop option; [@option]
      (** http_redirect_code *)
  protocol : string prop option; [@option]  (** protocol *)
  replace_key_prefix_with : string prop option; [@option]
      (** replace_key_prefix_with *)
  replace_key_with : string prop option; [@option]
      (** replace_key_with *)
}
[@@deriving yojson_of]
(** routing_rule__redirect *)

type routing_rule = {
  condition : routing_rule__condition list;
  redirect : routing_rule__redirect list;
}
[@@deriving yojson_of]
(** routing_rule *)

type aws_s3_bucket_website_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  routing_rules : string prop option; [@option]  (** routing_rules *)
  error_document : error_document list;
  index_document : index_document list;
  redirect_all_requests_to : redirect_all_requests_to list;
  routing_rule : routing_rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_website_configuration *)

let error_document ~key () : error_document = { key }
let index_document ~suffix () : index_document = { suffix }

let redirect_all_requests_to ?protocol ~host_name () :
    redirect_all_requests_to =
  { host_name; protocol }

let routing_rule__condition ?http_error_code_returned_equals
    ?key_prefix_equals () : routing_rule__condition =
  { http_error_code_returned_equals; key_prefix_equals }

let routing_rule__redirect ?host_name ?http_redirect_code ?protocol
    ?replace_key_prefix_with ?replace_key_with () :
    routing_rule__redirect =
  {
    host_name;
    http_redirect_code;
    protocol;
    replace_key_prefix_with;
    replace_key_with;
  }

let routing_rule ~condition ~redirect () : routing_rule =
  { condition; redirect }

let aws_s3_bucket_website_configuration ?expected_bucket_owner ?id
    ?routing_rules ~bucket ~error_document ~index_document
    ~redirect_all_requests_to ~routing_rule () :
    aws_s3_bucket_website_configuration =
  {
    bucket;
    expected_bucket_owner;
    id;
    routing_rules;
    error_document;
    index_document;
    redirect_all_requests_to;
    routing_rule;
  }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  routing_rules : string prop;
  website_domain : string prop;
  website_endpoint : string prop;
}

let register ?tf_module ?expected_bucket_owner ?id ?routing_rules
    ~bucket ~error_document ~index_document ~redirect_all_requests_to
    ~routing_rule __resource_id =
  let __resource_type = "aws_s3_bucket_website_configuration" in
  let __resource =
    aws_s3_bucket_website_configuration ?expected_bucket_owner ?id
      ?routing_rules ~bucket ~error_document ~index_document
      ~redirect_all_requests_to ~routing_rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_website_configuration __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
       routing_rules =
         Prop.computed __resource_type __resource_id "routing_rules";
       website_domain =
         Prop.computed __resource_type __resource_id "website_domain";
       website_endpoint =
         Prop.computed __resource_type __resource_id
           "website_endpoint";
     }
      : t)
  in
  __resource_attributes
