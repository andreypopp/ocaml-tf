(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type account_aggregation_source = {
  account_ids : string prop list;  (** account_ids *)
  all_regions : bool prop option; [@option]  (** all_regions *)
  regions : string prop list option; [@option]  (** regions *)
}
[@@deriving yojson_of]
(** account_aggregation_source *)

type organization_aggregation_source = {
  all_regions : bool prop option; [@option]  (** all_regions *)
  regions : string prop list option; [@option]  (** regions *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** organization_aggregation_source *)

type aws_config_configuration_aggregator = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  account_aggregation_source : account_aggregation_source list;
  organization_aggregation_source :
    organization_aggregation_source list;
}
[@@deriving yojson_of]
(** aws_config_configuration_aggregator *)

let account_aggregation_source ?all_regions ?regions ~account_ids ()
    : account_aggregation_source =
  { account_ids; all_regions; regions }

let organization_aggregation_source ?all_regions ?regions ~role_arn
    () : organization_aggregation_source =
  { all_regions; regions; role_arn }

let aws_config_configuration_aggregator ?id ?tags ?tags_all ~name
    ~account_aggregation_source ~organization_aggregation_source () :
    aws_config_configuration_aggregator =
  {
    id;
    name;
    tags;
    tags_all;
    account_aggregation_source;
    organization_aggregation_source;
  }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~name
    ~account_aggregation_source ~organization_aggregation_source
    __resource_id =
  let __resource_type = "aws_config_configuration_aggregator" in
  let __resource =
    aws_config_configuration_aggregator ?id ?tags ?tags_all ~name
      ~account_aggregation_source ~organization_aggregation_source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_configuration_aggregator __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
