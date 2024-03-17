(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securitylake_aws_log_source__source = {
  accounts : string prop list option; [@option]  (** accounts *)
  regions : string prop list;  (** regions *)
  source_name : string prop;  (** source_name *)
  source_version : string prop option; [@option]
      (** source_version *)
}
[@@deriving yojson_of]
(** aws_securitylake_aws_log_source__source *)

type aws_securitylake_aws_log_source = {
  source : aws_securitylake_aws_log_source__source list;
}
[@@deriving yojson_of]
(** aws_securitylake_aws_log_source *)

type t = { id : string prop }

let aws_securitylake_aws_log_source ~source __resource_id =
  let __resource_type = "aws_securitylake_aws_log_source" in
  let __resource = ({ source } : aws_securitylake_aws_log_source) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securitylake_aws_log_source __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
