(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ram_resource_share_accepter = {
  id : string prop option; [@option]  (** id *)
  share_arn : string prop;  (** share_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ram_resource_share_accepter *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ram_resource_share_accepter ?id ?timeouts ~share_arn () :
    aws_ram_resource_share_accepter =
  { id; share_arn; timeouts }

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

let make ?id ?timeouts ~share_arn __id =
  let __type = "aws_ram_resource_share_accepter" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       invitation_arn = Prop.computed __type __id "invitation_arn";
       receiver_account_id =
         Prop.computed __type __id "receiver_account_id";
       resources = Prop.computed __type __id "resources";
       sender_account_id =
         Prop.computed __type __id "sender_account_id";
       share_arn = Prop.computed __type __id "share_arn";
       share_id = Prop.computed __type __id "share_id";
       share_name = Prop.computed __type __id "share_name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ram_resource_share_accepter
        (aws_ram_resource_share_accepter ?id ?timeouts ~share_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~share_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~share_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
