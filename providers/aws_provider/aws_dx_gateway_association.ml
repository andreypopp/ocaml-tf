(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_gateway_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dx_gateway_association__timeouts *)

type aws_dx_gateway_association = {
  allowed_prefixes : string prop list option; [@option]
      (** allowed_prefixes *)
  associated_gateway_id : string prop option; [@option]
      (** associated_gateway_id *)
  associated_gateway_owner_account_id : string prop option; [@option]
      (** associated_gateway_owner_account_id *)
  dx_gateway_id : string prop;  (** dx_gateway_id *)
  id : string prop option; [@option]  (** id *)
  proposal_id : string prop option; [@option]  (** proposal_id *)
  vpn_gateway_id : string prop option; [@option]
      (** vpn_gateway_id *)
  timeouts : aws_dx_gateway_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_gateway_association *)

type t = {
  allowed_prefixes : string list prop;
  associated_gateway_id : string prop;
  associated_gateway_owner_account_id : string prop;
  associated_gateway_type : string prop;
  dx_gateway_association_id : string prop;
  dx_gateway_id : string prop;
  dx_gateway_owner_account_id : string prop;
  id : string prop;
  proposal_id : string prop;
  vpn_gateway_id : string prop;
}

let aws_dx_gateway_association ?allowed_prefixes
    ?associated_gateway_id ?associated_gateway_owner_account_id ?id
    ?proposal_id ?vpn_gateway_id ?timeouts ~dx_gateway_id
    __resource_id =
  let __resource_type = "aws_dx_gateway_association" in
  let __resource =
    ({
       allowed_prefixes;
       associated_gateway_id;
       associated_gateway_owner_account_id;
       dx_gateway_id;
       id;
       proposal_id;
       vpn_gateway_id;
       timeouts;
     }
      : aws_dx_gateway_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_gateway_association __resource);
  let __resource_attributes =
    ({
       allowed_prefixes =
         Prop.computed __resource_type __resource_id
           "allowed_prefixes";
       associated_gateway_id =
         Prop.computed __resource_type __resource_id
           "associated_gateway_id";
       associated_gateway_owner_account_id =
         Prop.computed __resource_type __resource_id
           "associated_gateway_owner_account_id";
       associated_gateway_type =
         Prop.computed __resource_type __resource_id
           "associated_gateway_type";
       dx_gateway_association_id =
         Prop.computed __resource_type __resource_id
           "dx_gateway_association_id";
       dx_gateway_id =
         Prop.computed __resource_type __resource_id "dx_gateway_id";
       dx_gateway_owner_account_id =
         Prop.computed __resource_type __resource_id
           "dx_gateway_owner_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       proposal_id =
         Prop.computed __resource_type __resource_id "proposal_id";
       vpn_gateway_id =
         Prop.computed __resource_type __resource_id "vpn_gateway_id";
     }
      : t)
  in
  __resource_attributes
