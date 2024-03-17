(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_dedicated_ip_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_pool__timeouts *)

type aws_sesv2_dedicated_ip_pool = {
  id : string prop option; [@option]  (** id *)
  pool_name : string prop;  (** pool_name *)
  scaling_mode : string prop option; [@option]  (** scaling_mode *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_sesv2_dedicated_ip_pool__timeouts option;
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_pool *)

type t = {
  arn : string prop;
  id : string prop;
  pool_name : string prop;
  scaling_mode : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_sesv2_dedicated_ip_pool ?id ?scaling_mode ?tags ?tags_all
    ?timeouts ~pool_name __resource_id =
  let __resource_type = "aws_sesv2_dedicated_ip_pool" in
  let __resource =
    ({ id; pool_name; scaling_mode; tags; tags_all; timeouts }
      : aws_sesv2_dedicated_ip_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_dedicated_ip_pool __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       pool_name =
         Prop.computed __resource_type __resource_id "pool_name";
       scaling_mode =
         Prop.computed __resource_type __resource_id "scaling_mode";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
