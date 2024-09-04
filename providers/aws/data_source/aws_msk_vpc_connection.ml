(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_vpc_connection = {
  arn : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_vpc_connection) -> ()

let yojson_of_aws_msk_vpc_connection =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_vpc_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_vpc_connection

[@@@deriving.end]

let aws_msk_vpc_connection ?id ?tags ~arn () : aws_msk_vpc_connection
    =
  { arn; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  authentication : string prop;
  client_subnets : string list prop;
  id : string prop;
  security_groups : string list prop;
  tags : string Tf_core.assoc prop;
  target_cluster_arn : string prop;
  vpc_id : string prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_msk_vpc_connection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       authentication = Prop.computed __type __id "authentication";
       client_subnets = Prop.computed __type __id "client_subnets";
       id = Prop.computed __type __id "id";
       security_groups = Prop.computed __type __id "security_groups";
       tags = Prop.computed __type __id "tags";
       target_cluster_arn =
         Prop.computed __type __id "target_cluster_arn";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_vpc_connection
        (aws_msk_vpc_connection ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
