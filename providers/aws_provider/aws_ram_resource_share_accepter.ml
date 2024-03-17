(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ram_resource_share_accepter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ram_resource_share_accepter__timeouts *)

type aws_ram_resource_share_accepter = {
  id : string prop option; [@option]  (** id *)
  share_arn : string prop;  (** share_arn *)
  timeouts : aws_ram_resource_share_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_ram_resource_share_accepter *)

type t = {
  id : string prop;
  invitation_arn : string prop;
  receiver_account_id : string prop;
  resources : string list prop;
  sender_account_id : string prop;
  share_arn : string prop;
  share_id : string prop;
  share_name : string prop;
  status : string prop;
}

let aws_ram_resource_share_accepter ?id ?timeouts ~share_arn
    __resource_id =
  let __resource_type = "aws_ram_resource_share_accepter" in
  let __resource =
    ({ id; share_arn; timeouts } : aws_ram_resource_share_accepter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_resource_share_accepter __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       invitation_arn =
         Prop.computed __resource_type __resource_id "invitation_arn";
       receiver_account_id =
         Prop.computed __resource_type __resource_id
           "receiver_account_id";
       resources =
         Prop.computed __resource_type __resource_id "resources";
       sender_account_id =
         Prop.computed __resource_type __resource_id
           "sender_account_id";
       share_arn =
         Prop.computed __resource_type __resource_id "share_arn";
       share_id =
         Prop.computed __resource_type __resource_id "share_id";
       share_name =
         Prop.computed __resource_type __resource_id "share_name";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
