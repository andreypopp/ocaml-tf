(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_sesv2_dedicated_ip_assignment = {
  destination_pool_name : string prop;  (** destination_pool_name *)
  id : string prop option; [@option]  (** id *)
  ip : string prop;  (** ip *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_assignment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_sesv2_dedicated_ip_assignment ?id ?timeouts
    ~destination_pool_name ~ip () : aws_sesv2_dedicated_ip_assignment
    =
  { destination_pool_name; id; ip; timeouts }

type t = {
  destination_pool_name : string prop;
  id : string prop;
  ip : string prop;
}

let register ?tf_module ?id ?timeouts ~destination_pool_name ~ip
    __resource_id =
  let __resource_type = "aws_sesv2_dedicated_ip_assignment" in
  let __resource =
    aws_sesv2_dedicated_ip_assignment ?id ?timeouts
      ~destination_pool_name ~ip ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
