(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudsearch_domain__endpoint_options = {
  enforce_https : bool prop option; [@option]  (** enforce_https *)
  tls_security_policy : string prop option; [@option]
      (** tls_security_policy *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain__endpoint_options *)

type aws_cloudsearch_domain__index_field = {
  analysis_scheme : string prop option; [@option]
      (** analysis_scheme *)
  default_value : string prop option; [@option]  (** default_value *)
  facet : bool prop option; [@option]  (** facet *)
  highlight : bool prop option; [@option]  (** highlight *)
  name : string prop;  (** name *)
  return : bool prop option; [@option]  (** return *)
  search : bool prop option; [@option]  (** search *)
  sort : bool prop option; [@option]  (** sort *)
  source_fields : string prop option; [@option]  (** source_fields *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain__index_field *)

type aws_cloudsearch_domain__scaling_parameters = {
  desired_instance_type : string prop option; [@option]
      (** desired_instance_type *)
  desired_partition_count : float prop option; [@option]
      (** desired_partition_count *)
  desired_replication_count : float prop option; [@option]
      (** desired_replication_count *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain__scaling_parameters *)

type aws_cloudsearch_domain__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain__timeouts *)

type aws_cloudsearch_domain = {
  id : string prop option; [@option]  (** id *)
  multi_az : bool prop option; [@option]  (** multi_az *)
  name : string prop;  (** name *)
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
