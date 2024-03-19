(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type endpoint_options = {
  enforce_https : bool prop option; [@option]  (** enforce_https *)
  tls_security_policy : string prop option; [@option]
      (** tls_security_policy *)
}
[@@deriving yojson_of]
(** endpoint_options *)

type index_field = {
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
(** index_field *)

type scaling_parameters = {
  desired_instance_type : string prop option; [@option]
      (** desired_instance_type *)
  desired_partition_count : float prop option; [@option]
      (** desired_partition_count *)
  desired_replication_count : float prop option; [@option]
      (** desired_replication_count *)
}
[@@deriving yojson_of]
(** scaling_parameters *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudsearch_domain = {
  id : string prop option; [@option]  (** id *)
  multi_az : bool prop option; [@option]  (** multi_az *)
  name : string prop;  (** name *)
  endpoint_options : endpoint_options list;
  index_field : index_field list;
  scaling_parameters : scaling_parameters list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain *)

let endpoint_options ?enforce_https ?tls_security_policy () :
    endpoint_options =
  { enforce_https; tls_security_policy }

let index_field ?analysis_scheme ?default_value ?facet ?highlight
    ?return ?search ?sort ?source_fields ~name ~type_ () :
    index_field =
  {
    analysis_scheme;
    default_value;
    facet;
    highlight;
    name;
    return;
    search;
    sort;
    source_fields;
    type_;
  }

let scaling_parameters ?desired_instance_type
    ?desired_partition_count ?desired_replication_count () :
    scaling_parameters =
  {
    desired_instance_type;
    desired_partition_count;
    desired_replication_count;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudsearch_domain ?id ?multi_az ?timeouts ~name
    ~endpoint_options ~index_field ~scaling_parameters () :
    aws_cloudsearch_domain =
  {
    id;
    multi_az;
    name;
    endpoint_options;
    index_field;
    scaling_parameters;
    timeouts;
  }

type t = {
  arn : string prop;
  document_service_endpoint : string prop;
  domain_id : string prop;
  id : string prop;
  multi_az : bool prop;
  name : string prop;
  search_service_endpoint : string prop;
}

let register ?tf_module ?id ?multi_az ?timeouts ~name
    ~endpoint_options ~index_field ~scaling_parameters __resource_id
    =
  let __resource_type = "aws_cloudsearch_domain" in
  let __resource =
    aws_cloudsearch_domain ?id ?multi_az ?timeouts ~name
      ~endpoint_options ~index_field ~scaling_parameters ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudsearch_domain __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       document_service_endpoint =
         Prop.computed __resource_type __resource_id
           "document_service_endpoint";
       domain_id =
         Prop.computed __resource_type __resource_id "domain_id";
       id = Prop.computed __resource_type __resource_id "id";
       multi_az =
         Prop.computed __resource_type __resource_id "multi_az";
       name = Prop.computed __resource_type __resource_id "name";
       search_service_endpoint =
         Prop.computed __resource_type __resource_id
           "search_service_endpoint";
     }
      : t)
  in
  __resource_attributes
