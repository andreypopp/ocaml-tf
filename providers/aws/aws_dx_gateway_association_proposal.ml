(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_gateway_association_proposal = {
  allowed_prefixes : string prop list option; [@option]
  associated_gateway_id : string prop;
  dx_gateway_id : string prop;
  dx_gateway_owner_account_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_gateway_association_proposal) -> ()

let yojson_of_aws_dx_gateway_association_proposal =
  (function
   | {
       allowed_prefixes = v_allowed_prefixes;
       associated_gateway_id = v_associated_gateway_id;
       dx_gateway_id = v_dx_gateway_id;
       dx_gateway_owner_account_id = v_dx_gateway_owner_account_id;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string
             v_dx_gateway_owner_account_id
         in
         ("dx_gateway_owner_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dx_gateway_id in
         ("dx_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_associated_gateway_id
         in
         ("associated_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_allowed_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_prefixes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dx_gateway_association_proposal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_gateway_association_proposal

[@@@deriving.end]

let aws_dx_gateway_association_proposal ?allowed_prefixes ?id
    ~associated_gateway_id ~dx_gateway_id
    ~dx_gateway_owner_account_id () :
    aws_dx_gateway_association_proposal =
  {
    allowed_prefixes;
    associated_gateway_id;
    dx_gateway_id;
    dx_gateway_owner_account_id;
    id;
  }

type t = {
  tf_name : string;
  allowed_prefixes : string list prop;
  associated_gateway_id : string prop;
  associated_gateway_owner_account_id : string prop;
  associated_gateway_type : string prop;
  dx_gateway_id : string prop;
  dx_gateway_owner_account_id : string prop;
  id : string prop;
}

let make ?allowed_prefixes ?id ~associated_gateway_id ~dx_gateway_id
    ~dx_gateway_owner_account_id __id =
  let __type = "aws_dx_gateway_association_proposal" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_prefixes =
         Prop.computed __type __id "allowed_prefixes";
       associated_gateway_id =
         Prop.computed __type __id "associated_gateway_id";
       associated_gateway_owner_account_id =
         Prop.computed __type __id
           "associated_gateway_owner_account_id";
       associated_gateway_type =
         Prop.computed __type __id "associated_gateway_type";
       dx_gateway_id = Prop.computed __type __id "dx_gateway_id";
       dx_gateway_owner_account_id =
         Prop.computed __type __id "dx_gateway_owner_account_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_gateway_association_proposal
        (aws_dx_gateway_association_proposal ?allowed_prefixes ?id
           ~associated_gateway_id ~dx_gateway_id
           ~dx_gateway_owner_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_prefixes ?id ~associated_gateway_id
    ~dx_gateway_id ~dx_gateway_owner_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_prefixes ?id ~associated_gateway_id ~dx_gateway_id
      ~dx_gateway_owner_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
