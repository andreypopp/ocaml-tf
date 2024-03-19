(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_inspector2_enabler = {
  account_ids : string prop list;  (** account_ids *)
  id : string prop option; [@option]  (** id *)
  resource_types : string prop list;  (** resource_types *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_inspector2_enabler *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_inspector2_enabler ?id ?timeouts ~account_ids ~resource_types
    () : aws_inspector2_enabler =
  { account_ids; id; resource_types; timeouts }

type t = {
  account_ids : string list prop;
  id : string prop;
  resource_types : string list prop;
}

let register ?tf_module ?id ?timeouts ~account_ids ~resource_types
    __resource_id =
  let __resource_type = "aws_inspector2_enabler" in
  let __resource =
    aws_inspector2_enabler ?id ?timeouts ~account_ids ~resource_types
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector2_enabler __resource);
  let __resource_attributes =
    ({
       account_ids =
         Prop.computed __resource_type __resource_id "account_ids";
       id = Prop.computed __resource_type __resource_id "id";
       resource_types =
         Prop.computed __resource_type __resource_id "resource_types";
     }
      : t)
  in
  __resource_attributes
