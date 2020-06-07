module SplittablesTesting

import SplittablesBase

for n in SplittablesBase.Testing._PUBLIC_API
    @eval const $n = SplittablesBase.Testing.$n
    d = @eval @doc(SplittablesBase.Testing.$n)
    @eval @doc($d, $n)
end

end
