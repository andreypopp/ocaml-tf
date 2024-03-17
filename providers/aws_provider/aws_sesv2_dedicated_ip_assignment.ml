(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_dedicated_ip_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_assignment__timeouts *)

type aws_sesv2_dedicated_ip_assignment = {
  destination_pool_name : string prop;  (** destination_pool_name *)
  id : string prop option; [@option]  (** id *)
  ip : string prop;  (** ip *)
  timeouts : aws_sesv2_dedicated_ip_assignment__timeouts option;
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_assignment *)

type t = {
  destination_pool_name : string prop;
  id : string prop;
  ip : string prop;
}

let aws_sesv2_dedicated_ip_assignment ?id ?timeouts
    ~destination_pool_name ~ip __resource_id =
  let __resource_type = "aws_sesv2_dedicated_ip_assignment" in
  let __resource =
    ({ destination_pool_name; id; ip; timeouts }
      : aws_sesv2_dedicated_ip_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_dedicated_ip_assignment __resource);
  let __resource_attributes =
    ({
       destination_pool_name =
         Prop.computed __resource_type __resource_id
           "destination_pool_name";
       id = Prop.computed __resource_type __resource_id "id";
       ip = Prop.computed __resource_type __resource_id "ip";
     }
      : t)
  in
  __resource_attributes
