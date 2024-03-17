(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudsearch_domain__endpoint_options = {
  enforce_https : bool option; [@option]  (** enforce_https *)
  tls_security_policy : string option; [@option]
      (** tls_security_policy *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain__endpoint_options *)

type aws_cloudsearch_domain__index_field = {
  analysis_scheme : string option; [@option]  (** analysis_scheme *)
  default_value : string option; [@option]  (** default_value *)
  facet : bool option; [@option]  (** facet *)
  highlight : bool option; [@option]  (** highlight *)
  name : string;  (** name *)
  return : bool option; [@option]  (** return *)
  search : bool option; [@option]  (** search *)
  sort : bool option; [@option]  (** sort *)
  source_fields : string option; [@option]  (** source_fields *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain__index_field *)

type aws_cloudsearch_domain__scaling_parameters = {
  desired_instance_type : string option; [@option]
      (** desired_instance_type *)
  desired_partition_count : float option; [@option]
      (** desired_partition_count *)
  desired_replication_count : float option; [@option]
      (** desired_replication_count *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain__scaling_parameters *)

type aws_cloudsearch_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain__timeouts *)

type aws_cloudsearch_domain = {
  id : string option; [@option]  (** id *)
  multi_az : bool option; [@option]  (** multi_az *)
  name : string;  (** name *)
  endpoint_options : aws_cloudsearch_domain__endpoint_options list;
  index_field : aws_cloudsearch_domain__index_field list;
  scaling_parameters :
    aws_cloudsearch_domain__scaling_parameters list;
  timeouts : aws_cloudsearch_domain__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain *)

let aws_cloudsearch_domain ?id ?multi_az ?timeouts ~name
    ~endpoint_options ~index_field ~scaling_parameters __resource_id
    =
  let __resource_type = "aws_cloudsearch_domain" in
  let __resource =
    {
      id;
      multi_az;
      name;
      endpoint_options;
      index_field;
      scaling_parameters;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudsearch_domain __resource);
  ()
