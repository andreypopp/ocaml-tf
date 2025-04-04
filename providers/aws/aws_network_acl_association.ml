(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_network_acl_association = {
  id : string prop option; [@option]
  network_acl_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_network_acl_association) -> ()

let yojson_of_aws_network_acl_association =
  (function
   | {
       id = v_id;
       network_acl_id = v_network_acl_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_acl_id
         in
         ("network_acl_id", arg) :: bnds
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
    : aws_network_acl_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_network_acl_association

[@@@deriving.end]

let aws_network_acl_association ?id ~network_acl_id ~subnet_id () :
    aws_network_acl_association =
  { id; network_acl_id; subnet_id }

type t = {
  tf_name : string;
  id : string prop;
  network_acl_id : string prop;
  subnet_id : string prop;
}

let make ?id ~network_acl_id ~subnet_id __id =
  let __type = "aws_network_acl_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       network_acl_id = Prop.computed __type __id "network_acl_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_acl_association
        (aws_network_acl_association ?id ~network_acl_id ~subnet_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~network_acl_id ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~network_acl_id ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
