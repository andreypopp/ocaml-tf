(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ram_principal_association = {
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  resource_share_arn : string prop;  (** resource_share_arn *)
}
[@@deriving yojson_of]
(** aws_ram_principal_association *)

let aws_ram_principal_association ?id ~principal ~resource_share_arn
    () : aws_ram_principal_association =
  { id; principal; resource_share_arn }

type t = {
  id : string prop;
  principal : string prop;
  resource_share_arn : string prop;
}

let make ?id ~principal ~resource_share_arn __id =
  let __type = "aws_ram_principal_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       resource_share_arn =
         Prop.computed __type __id "resource_share_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ram_principal_association
        (aws_ram_principal_association ?id ~principal
           ~resource_share_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~principal ~resource_share_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~principal ~resource_share_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
