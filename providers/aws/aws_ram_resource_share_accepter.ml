(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ram_resource_share_accepter = {
  id : string prop option; [@option]
  share_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ram_resource_share_accepter) -> ()

let yojson_of_aws_ram_resource_share_accepter =
  (function
   | { id = v_id; share_arn = v_share_arn; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_arn in
         ("share_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ram_resource_share_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ram_resource_share_accepter

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ram_resource_share_accepter ?id ?timeouts ~share_arn () :
    aws_ram_resource_share_accepter =
  { id; share_arn; timeouts }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
