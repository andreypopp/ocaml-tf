(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoveryreadiness_readiness_check__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_readiness_check__timeouts *)

type aws_route53recoveryreadiness_readiness_check = {
  id : string prop option; [@option]  (** id *)
  readiness_check_name : string prop;  (** readiness_check_name *)
  resource_set_name : string prop;  (** resource_set_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts :
    aws_route53recoveryreadiness_readiness_check__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_readiness_check *)

let aws_route53recoveryreadiness_readiness_check ?id ?tags ?tags_all
    ?timeouts ~readiness_check_name ~resource_set_name __resource_id
    =
  let __resource_type =
    "aws_route53recoveryreadiness_readiness_check"
  in
  let __resource =
    {
      id;
      readiness_check_name;
      resource_set_name;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoveryreadiness_readiness_check
       __resource);
  ()
