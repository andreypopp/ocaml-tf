(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_account_region__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_account_region__timeouts *)

type aws_account_region = {
  account_id : string prop option; [@option]  (** account_id *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  region_name : string prop;  (** region_name *)
  timeouts : aws_account_region__timeouts option;
}
[@@deriving yojson_of]
(** aws_account_region *)

let aws_account_region ?account_id ?id ?timeouts ~enabled
    ~region_name __resource_id =
  let __resource_type = "aws_account_region" in
  let __resource =
    { account_id; enabled; id; region_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_account_region __resource);
  ()
