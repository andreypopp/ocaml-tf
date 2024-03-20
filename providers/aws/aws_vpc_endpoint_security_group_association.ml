(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_endpoint_security_group_association = {
  id : string prop option; [@option]
  replace_default_association : bool prop option; [@option]
  security_group_id : string prop;
  vpc_endpoint_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint_security_group_association) -> ()

let yojson_of_aws_vpc_endpoint_security_group_association =
  (function
   | {
       id = v_id;
       replace_default_association = v_replace_default_association;
       security_group_id = v_security_group_id;
       vpc_endpoint_id = v_vpc_endpoint_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_group_id
         in
         ("security_group_id", arg) :: bnds
       in
       let bnds =
         match v_replace_default_association with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace_default_association", arg in
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
       `Assoc bnds
    : aws_vpc_endpoint_security_group_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_security_group_association

[@@@deriving.end]

let aws_vpc_endpoint_security_group_association ?id
    ?replace_default_association ~security_group_id ~vpc_endpoint_id
    () : aws_vpc_endpoint_security_group_association =
  {
    id;
    replace_default_association;
    security_group_id;
    vpc_endpoint_id;
  }

type t = {
  id : string prop;
  replace_default_association : bool prop;
  security_group_id : string prop;
  vpc_endpoint_id : string prop;
}

let make ?id ?replace_default_association ~security_group_id
    ~vpc_endpoint_id __id =
  let __type = "aws_vpc_endpoint_security_group_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       replace_default_association =
         Prop.computed __type __id "replace_default_association";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_security_group_association
        (aws_vpc_endpoint_security_group_association ?id
           ?replace_default_association ~security_group_id
           ~vpc_endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?replace_default_association
    ~security_group_id ~vpc_endpoint_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?replace_default_association ~security_group_id
      ~vpc_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
