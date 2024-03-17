(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_configuration_aggregator__account_aggregation_source = {
  account_ids : string list;  (** account_ids *)
  all_regions : bool option; [@option]  (** all_regions *)
  regions : string list option; [@option]  (** regions *)
}
[@@deriving yojson_of]
(** aws_config_configuration_aggregator__account_aggregation_source *)

type aws_config_configuration_aggregator__organization_aggregation_source = {
  all_regions : bool option; [@option]  (** all_regions *)
  regions : string list option; [@option]  (** regions *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_config_configuration_aggregator__organization_aggregation_source *)

type aws_config_configuration_aggregator = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  account_aggregation_source :
    aws_config_configuration_aggregator__account_aggregation_source
    list;
  organization_aggregation_source :
    aws_config_configuration_aggregator__organization_aggregation_source
    list;
}
[@@deriving yojson_of]
(** aws_config_configuration_aggregator *)

let aws_config_configuration_aggregator ?id ?tags ?tags_all ~name
    ~account_aggregation_source ~organization_aggregation_source
    __resource_id =
  let __resource_type = "aws_config_configuration_aggregator" in
  let __resource =
    {
      id;
      name;
      tags;
      tags_all;
      account_aggregation_source;
      organization_aggregation_source;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_configuration_aggregator __resource);
  ()
