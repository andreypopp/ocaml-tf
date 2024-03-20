(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_gateway_association_proposal = {
  allowed_prefixes : string prop list option; [@option]
      (** allowed_prefixes *)
  associated_gateway_id : string prop;  (** associated_gateway_id *)
  dx_gateway_id : string prop;  (** dx_gateway_id *)
  dx_gateway_owner_account_id : string prop;
      (** dx_gateway_owner_account_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_dx_gateway_association_proposal *)

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
